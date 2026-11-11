---------------------------- MODULE PdCore ----------------------------
(***************************************************************************)
(* PD ledger：我们自己的 PD 分离 KV 协议的设计模型。                            *)
(* 依据页生命周期设计（页状态、两种需要"已停"证据的转换、在途                   *)
(* 账本含本地 CUDA 流、xfer 记录与单调 id、代际、隔离与第一步兜底、推拉表      *)
(* ）和环境前提（最宽读法）。                                                 *)
(* 起点：单机账本（ledger/inflight 思路），这里扩成                               *)
(* "位置 x 搬运者 x 代际"；单机账本本身（共享前缀链、表行）不重复建模。        *)
(*                                                                         *)
(* 形状：                                                                  *)
(*  - 实例 1..NPI 是 P，NPI+1..NPI+NDI 是 D；一个实例 = 一个位置，PPL 页。    *)
(*  - 请求槽 r（= room），每次复用代际 +1（gen），由路由器（不可信策略）任选    *)
(*    一个 P、一个 D。每个请求 1 页（NTok(r, g) 个 token，page_size = PS）。    *)
(*  - 每页一个 xfer（id 单调、不复用），由"暴露方"建记录：push 时 D 暴露目的页 *)
(*    并给出 x，pull 时 P 暴露源页并给出 x。发起方：push = P（WRITE），         *)
(*    pull = D（READ）。                                                     *)
(*  - 账本 led[p]：核心认为可能还会碰 p 的 xfer（暴露时或发起时加入，只在拿到   *)
(*    "已停"证据时去掉）；sled[p]：本地流上未确认完成的 op（P 的 prefill 写、    *)
(*    D 的 decode 读写）。环境真值：hw[x]（fly / issued / stop）、sfly[p]。      *)
(*  - 控制消息 net：只增不删的消息集合 = 任意延迟、重复、乱序、丢失（不送达）。 *)
(*                                                                         *)
(* ASSUMES（本模块不检查、写成前提）：                                       *)
(*  A1 H-visible：读者在拿到落地证据之后才由 CPU 发起新的 CUDA 提交（decode op *)
(*     在证据之后才发射），可见性由此得到；不建 PCIe 层乱序。                  *)
(*  A2 本地流 op 在 GPU 上最终完成（StreamLand 有弱公平）；事件查询为真 ⇒ op 已 *)
(*     完成（CUDA event 语义）。                                              *)
(*  A3 拉模式下发起方 D 的 READ 完成事件 ⇒ 数据已放进 D 的页且 P 侧不再被读     *)
(*     （H-complete 对 READ 的读法）。                                         *)
(*  推模式的证据链（push 为主，对齐 SGLang + Mooncake）拆成三个读法开关： *)
(*   HComplete："narrow" = P 的 WRITE 完成事件 ⇒ 数据已放置在 D（hw = stop）；  *)
(*              "widest" = 只说明源已读完、对端网卡已确认（hw = issued 即可）。 *)
(*   HOrder："strict" = P 在完成事件之后发出的 notice 送达时，数据已放置；     *)
(*           "widest" = 无此保证（只对"发送方看到完成之后才发"的 notice 讨论）。*)
(*   HVisible："narrow" = 放置后由 CPU 发射的 kernel 看得见；"widest" = 只有在  *)
(*            放置之后做过 cudaDeviceFlushGPUDirectRDMAWrites 才看得见。       *)
(*   设计开关：PushEv = "notice"（SGLang/Mooncake 式：D 凭 P 的 notice 认定落地）*)
(*            或 "inband"（D 本地的带内完成，A5）；Flush = D 认定落地后、发射  *)
(*            decode 前做 GPUDirect flush（只覆盖已放置的写）。               *)
(*  A5 PushEv = "inband"：D 能在本地看到"数据已放置"的带内完成（同一 QP 上      *)
(*     WRITE_WITH_IMM 之类，关闭宽松排序、逐路径取证）；这是需要实测确认的前提。 *)
(*  A6 H-layout、H-lib、H-path 不建模。TP = 1。                               *)
(*  A7 Unquar = TRUE（可选，第二步）：Teardown(j, i) 之后，j 与旧实例 i 之间的  *)
(*     全部 op 停下、不再落地，之后 i 的新 op 一律被拒（QP 已 ERR/销毁、CQ 已排空、*)
(*     重试队列已清空、拒绝旧实例重连，隔离规则）；H-revoke 实验要证实它。       *)
(* 写法照 Apalache：变量、常量带类型标注，不用 CHOOSE、不用递归。            *)
(*                                                                         *)
(* KernelReadPins：kernel 读进核心。每个实例有 KR 个步槽；              *)
(*  KLaunch(i, s, rows) 由核心做发射核对并算出读集合 krs（一个步一条钉，不按   *)
(*  页记 sled），KLand 是 GPU 做完（环境），KDone 是事件查询为真后             *)
(*  核心去钉（= step_done，E1）。被钉的页不换状态（不回 Free、不换主人、不解除 *)
(*  隔离）。attention kernel 不写 KV（store.cu 按 out_loc 写，归现有的本地流 op）*)
(*  A8 本地 kernel 步最终做完（KLand 弱公平）；完成顺序不限（最宽）。           *)
(* 提交与登记分离：PReg = p_post 只登记、p_begin 才提交（PSubmit），             *)
(*  登记态可取消（PCancelReg，停证据 = 从未提交，同 nopost）。                  *)
(* decode growth and cancellation（① 解码加页、PReg 超时修法）：    *)
(*  DGrow(j, r)：D 解码时加页（glue allocate_paged → ledger.alloc）。守卫 = 核心的 *)
(*   D 分配窗口在暴露之后的那一支（x 已 VISIBLE、主人 LIVE）= 记录 run / ovl。加页 *)
(*   不暴露、不进 RDMA / 本地流账本；之后每一步都钉住它（读集合 = 这一代在本实例   *)
(*   上的全部页，同核心 launch 的 rlp）；把它放进写区间的那一步写它，之后的步才读  *)
(*   它（核心的 rd <= max(rwr, rla)）；记录结束时随记录放（没钉 Free、被钉 Drain）。*)
(*  A9 流内 FIFO：同一实例的 kernel 步在一条流上按发射顺序执行；后发射的步开始读  *)
(*   时，先发射的步的 store 写已完成（核心 rla 一支、glue overlap 循环先发射 k+2 再 *)
(*   收 k+1 的前提）。只用在加页的数据真值上；步的完成顺序照旧不限。             *)
(*  PReg 超时修法进默认 Spec：PEnd 先取消登记态的 x；P 页                         *)
(*   账本里有登记态的 x 时 DrainTimeout 不使能（由 PCancelReg 放页）。QuarNoReg。 *)
(***************************************************************************)
EXTENDS Integers, FiniteSets

CONSTANTS
  \* @type: Str;
  Mode,      \* "push" | "pull"
  \* @type: Str;
  HComplete, \* "narrow" | "widest"（H-complete：P 的 WRITE 完成事件说明什么）
  \* @type: Str;
  HOrder,    \* "strict" | "widest"（H-order：notice 和数据谁先到）
  \* @type: Str;
  HVisible,  \* "narrow" | "widest"（H-visible：放置后 kernel 何时看得见）
  \* @type: Str;
  PushEv,    \* 设计：push 时 D 凭什么认定落地："notice" | "inband"
  \* @type: Bool;
  Flush,     \* 设计：D 认定落地后、发射 decode 前做 GPUDirect flush
  \* @type: Bool;
  Unquar,    \* 设计（可选，第二步）：拆掉到旧对端实例的全部 QP 后解除隔离
  \* @type: Bool;
  PRel,      \* source-release ordering（开关）：P 的请求可以在它的 x 还没停时正常结束（glue：p_post 之后立刻 release），源页进 Drain(h)
  \* @type: Bool;
  BadLen,    \* transfer-length consistency（开关，环境）：P 实际算出的 token 数可以和 D 的计划不同（输入不一致，Cloudflare 类）
  \* @type: Bool;
  Ovl,       \* overlapped-finish drain（开关）：overlap 调度——D 的请求在包含它的下一步已发射、还在跑时就成功结束，页进 Drain(h)
  \* @type: Int;
  KR,        \* KernelReadPins：每个实例的 kernel 步槽数（同时在途的步数上界；0 = 不建 kernel 读）
  \* @type: Bool;
  PReg,      \* 提交与登记分离（开关）：P 的 p_post 只登记（可取消），p_begin 才把 WRITE 交给传输库
  \* @type: Str;
  Mut,       \* "none" 或一个变异体（见 Mutants）
  \* @type: Bool;
  Faults,    \* TRUE：op 可失败、库可返回失败（H-fail）、超时可随时触发；FALSE：只在对端挂住时超时
  \* @type: Int;
  MaxFail,   \* 最多几次对端挂住（Hang）
  \* @type: Int;
  NPI,       \* P 实例数
  \* @type: Int;
  NDI,       \* D 实例数
  \* @type: Int;
  NR,        \* 请求槽数
  \* @type: Int;
  MG,        \* 每个槽最多几代
  \* @type: Int;
  PPL,       \* 每个位置的页数
  \* @type: Int;
  NP,        \* 总页数 = (NPI + NDI) * PPL
  \* @type: Int;
  PS,        \* page_size（token）
  \* @type: Int;
  MX,        \* xfer id 上界
  \* @type: Bool;
  B2,
  \* @type: Int;
  SPP        \* P prefix slots per instance; disjoint from suffix Pages

\* 变异体（Mut）：push 特有的先列
\*  timeoutRelease          SGLang / vLLM 租约到期：超时就放页（不隔离）
\*  noticeBeforeCompletion  Mooncake#3406：P 发出 WRITE 就发成功 notice，不等完成事件
\*  failedAsDrained         库返回失败（−1）就当作已排空，发 notice、放源页
\*  sourceFreedBeforeAck    （pull）P 不等 ReleaseSource 就放源页（租约到期或收到 abort）
\*  noGeneration            请求级消息不按代过滤
\*  inflightResetOnReuse    槽开始新一代时清掉这个槽的在途记账
\*  sealPartial             只写了部分 token 的页也封存成共享
\*  unquarantineOnRehandshake  看到对端重新握手就解除隔离（不拆 QP）
\*  sendEarly               sglang#41395：prefill 还没确认完成就发送
\*  leakOnAbort             D abort 时账本已空也不放页（泄漏，校准页守恒）
\*  noDeadline              负校准：路由器、P、D、Draining 页都没有期限（等证据或回复时永远等）
\*  noDeadlineD / noDeadlineP  只去掉 D（或 P）自己的期限和它的 Draining 期限，外加路由器期限
\*  noDeadlineDOnly / noRouterDeadline  只去掉 D 的期限 / 只去掉路由器的期限（看哪一层期限承重）
\*  pReleaseFree            source-release ordering：P 的请求在 x 还没停时结束，直接放源页（不进 Drain）
\*  ignoreLt                transfer-length consistency：D 不核对 notice / sinfo / 带内完成里的 lt，lt ≠ 计划也认定落地
\*  freeOnFinish            overlapped-finish drain：overlap 下成功结束时直接放页，不管下一步还在跑（sled ≠ ∅）
\*  nokFrees                把 ¬ok notice 当作已停（失败）证据，x 出账本、页放回（旧版对 U1 的取法）
\*  KernelReadPins（kernel 读）：
\*  kLaunchUnlanded         发射核对不看落地：D 在 wait / rd（x 还没停）、P 在 pre（prefill 写还没 E1）也可发射
\*  kLaunchUnflushed        D 拿到落地证据（push：xst landed；pull：READ 完成）、还没 flush 就发射
\*  kWrongGen               发射核对按 room 找页、不核代（R2 / R3 类：room 当身份），读到同一 room 旧一代的页
\*  kFreeUnderRead          所有放页判断都不看步的钉（读着的页被放回 / 淘汰）
\*  kQuarRelUnderRead       解除隔离（Unquar）不看步的钉
\*  kDoneEarly              KDone 不等这一步的事件（GPU 还在读就去钉）
\*  kDoneNeedsNext          只有发射了下一步才处理上一步的完成（主循环只在有新步时收完成）
\*  cancelSubmitted         PReg：取消时把已提交（p_begin 之后）的条目也当成未提交，放源页、回 nopost
\*  decode growth and cancellation（DGrow / PReg 超时修法）：
\*  growNoRun               D 在记录还没提交（wait / rd：x 还没 VISIBLE）时也加页（核心不查 d_alloc_ok 的 VISIBLE）
\*  growNonFree             加页取的页不必是空页（Drain / 隔离 / 共享 / 别的记录的私有页：空闲表里混进了还在用的页）
\*  growFreeUnderPin        记录结束时放加页不看 kernel 钉
\*  kReadUnwritten          发射时把还没有步写过的加页当成已写来读（核心不查 rd <= max(rwr, rla)）
\*  kGrowNoFifo             写加页的步与之后读它的步不在一条流上（A9 不成立）：写在写它的步做完时才落下
\*  pEndNoCancel            PEnd 不先取消登记态的 x（旧行为：只登记、从未提交的源页随超时进隔离）
\*  drainTimeoutReg         P 页账本里有登记态的 x 时 Drain 照旧超时进隔离（旧行为）
Mutants == {"none", "timeoutRelease", "noticeBeforeCompletion", "failedAsDrained", "sourceFreedBeforeAck",
            "noGeneration", "inflightResetOnReuse", "sealPartial", "unquarantineOnRehandshake", "sendEarly", "leakOnAbort",
            "noDeadline", "noDeadlineD", "noDeadlineP", "noDeadlineDOnly", "noRouterDeadline", "pReleaseFree", "ignoreLt", "freeOnFinish", "nokFrees",
            "kLaunchUnlanded", "kLaunchUnflushed", "kWrongGen", "kFreeUnderRead", "kQuarRelUnderRead", "kDoneEarly",
            "kDoneNeedsNext", "cancelSubmitted",
            "growNoRun", "growNonFree", "growFreeUnderPin", "kReadUnwritten", "kGrowNoFifo", "pEndNoCancel", "drainTimeoutReg"}
\* 期限变异：哪一方没有期限
NoDLRouter == Mut \in {"noDeadline", "noDeadlineD", "noDeadlineP", "noRouterDeadline"}
NoDLD      == Mut \in {"noDeadline", "noDeadlineD", "noDeadlineDOnly"}
NoDLP      == Mut \in {"noDeadline", "noDeadlineP"}

NL == NPI + NDI
Inst == 1..NL
PInst == 1..NPI
DInst == (NPI + 1)..NL
Rq == 1..NR
Gens == 1..MG
Xids == 1..MX
Pages == 1..NP
KSlots == 1..KR
IsP(i) == i <= NPI
IsD(i) == i > NPI
BaseLoc(p) == IF p <= PPL THEN 1 ELSE IF p <= PPL + PPL THEN 2 ELSE IF p <= PPL + PPL + PPL THEN 3 ELSE 4
SPages == (NP + 1)..(NP + NPI * SPP)
KPages == Pages \cup SPages
SWidth == IF SPP > 0 THEN SPP ELSE 1
Loc(p) == IF p <= NP THEN BaseLoc(p) ELSE 1 + (p - NP - 1) \div SWidth
\* 请求 (r, g) 的 token 数：奇数代整页，偶数代少一个 token（PS > 1 时尾页不满；整页请求可以排在不满的请求之后，
\* 这样"不满的页被封存后又被整页请求命中"才可达）。PS = 1 或 MG ≤ 2 时与"只有第 1 代整页"相同
NTok(r, g) == IF PS = 1 \/ g % 2 = 1 THEN PS ELSE PS - 1
\* transfer-length consistency：P 的 prefill 实际写下的 token 数；BadLen 时可以比计划少一个（P 的输入和 D 的计划不一致）
PLens(r, g) == IF BadLen THEN {NTok(r, g), NTok(r, g) - 1} ELSE {NTok(r, g)}

\* @type: (Str, Int, Int, Int, Int, Int, Int, Int, Bool) => {t: Str, fr: Int, to: Int, r: Int, g: Int, x: Int, pg: Int, pe: Int, ok: Bool};
Msg(t, fr, to, r, g, x, pg, pe, ok) ==
  [t |-> t, fr |-> fr, to |-> to, r |-> r, g |-> g, x |-> x, pg |-> pg, pe |-> pe, ok |-> ok]

VARIABLES
  \* ---- 路由器（不可信策略 + 客户端回复） ----
  \* @type: Int -> Int;
  gen,      \* 槽 r 当前的代（0 = 没用过）
  \* @type: Int -> Str;
  rt,       \* "idle" | "wait" | "ok" | "err"
  \* @type: Int -> Int;
  rp,       \* 当前代的 P 实例
  \* @type: Int -> Int;
  rd,       \* 当前代的 D 实例
  \* @type: Int -> (Int -> Int);
  hp,       \* 幽灵：(r, g) 被分给的 P 实例（历史，只用于归纳不变式）
  \* @type: Int -> (Int -> Int);
  hd,       \* 幽灵：(r, g) 被分给的 D 实例
  \* ---- 实例 ----
  \* @type: Int -> Bool;
  alive,    \* FALSE = 挂住（不收消息、不做动作；它的网卡照常工作）
  \* @type: Int;
  nfail,
  \* @type: Int -> Set(Int);
  torn,     \* Unquar：j 已拆掉到这些实例的全部 QP（之后与它们之间的 RDMA 一律被拒）
  \* ---- KernelReadPins：每个实例的 kernel 步（槽 s ∈ 1..KR） ----
  \* @type: Int -> (Int -> Bool);
  kpin,     \* 账本：步 s 已发射、核心还没收到它的完成（KDone 之前，读集合里的页被钉住）
  \* @type: Int -> (Int -> Bool);
  kfly,     \* 环境真值：步 s 的 kernel 还在 GPU 上跑（还在读读集合里的页）
  \* @type: Int -> (Int -> Set(<<Int, Int, Int, Int>>));
  krs,      \* 核心在发射核对时算出的读集合：每行一个 <<槽 r, 代 g, 页 p, sh>>，sh = 1 表示读的是共享页
  \* ---- 每个实例每个槽的请求记录 ----
  \* @type: Int -> (Int -> Str);
  ph,       \* P："none" "pre" "ready" "reg"（PReg：已登记未提交）"sent" "exp" "end"；D："none" "wait" "rd" "run" "ovl" "end"
  \* @type: Int -> (Int -> Int);
  rg,       \* 记录的代
  \* @type: Int -> (Int -> Int);
  rpg,      \* 记录的页（P 源页；D 目的页或命中的共享页）
  \* @type: Int -> (Int -> Int);
  rpe,      \* 对端实例
  \* @type: Int -> (Int -> Int);
  rx,       \* xfer id（0 = 无）
  \* @type: Int -> (Int -> Bool);
  rhit,     \* D：前缀命中共享页
  \* ---- 页 ----
  \* @type: Int -> Str;
  pst,      \* "free" | "priv" | "shared" | "drain" | "quar"
  \* @type: Int -> Int;
  pr,       \* priv / drain / quar 的主人（槽）
  \* @type: Int -> Int;
  pgn,      \* 主人的代
  \* @type: Int -> Int;
  plt,      \* landed_tokens：核心凭证据认定已落地的 token 数
  \* @type: Int -> Int;
  ptl,      \* 幽灵真值：主人这一代的数据真正落地的 token 数（-1 = 被别人的字节写过）
  \* @type: Int -> Bool;
  pvis,     \* 幽灵真值：已放置的数据对之后发射的 kernel 看得见（H-visible）
  \* @type: Int -> Set(Int);
  led,      \* 在途账本（RDMA）：可能还会碰这页的 xfer
  \* @type: Int -> Set(<<Int, Int>>);
  sfly,     \* 环境真值：这页上还在跑的本地流 op（发起它的 (槽, 代)）
  \* @type: Int -> Set(<<Int, Int>>);
  sled,     \* 在途账本（本地流）：核心还没确认完成的流 op
  \* @type: Int -> Int;
  prefc,    \* shared 页的引用数
  \* @type: Int -> Int;
  pqp,      \* quar 页：在等哪个对端实例
  \* ---- xfer 记录（xfer[id]） ----
  \* @type: Int -> Int;
  xr,
  \* @type: Int -> Int;
  xg,
  \* @type: Int -> Str;
  xk,       \* "none" | "wr"（push：P WRITE）| "rd"（pull：D READ）
  \* @type: Int -> Int;
  xp,       \* P 实例
  \* @type: Int -> Int;
  xd,       \* D 实例
  \* @type: Int -> Int;
  xsrc,     \* 源页（P 上；push 时 P 发起才填）
  \* @type: Int -> Int;
  xdst,     \* 目的页（D 上；pull 时 D 发起才填）
  \* @type: Int -> Int;
  xnt,      \* token 数
  \* @type: Int -> Str;
  hw,       \* 环境真值："none"（未发出）| "fly"（排队、在传、库内重试：可读源、可写目的）
            \*            | "issued"（WRITE：源已读完、对端网卡已确认、目的端可能还没放置）| "stop"
  \* @type: Int -> Bool;
  hok,      \* stop 时是否完整成功（FALSE = 部分写，H-partial）
  \* @type: Int -> Str;
  iv,       \* 发起方看到的："none" | "posted" | "cqe"（完成事件，已停证据）| "failret"（库返回失败或超时：
            \*   不是已停证据，句柄丢弃）| "nopost"（发起方承诺永不发出）
  \* @type: Int -> Str;
  xst,      \* 暴露方的记录状态（Posted/Landed/Failed/Revoked）："none" | "posted" | "landed" | "failed" | "revoked"
  \* @type: Int;
  nx,       \* 下一个 xfer id（单调）
  \* @type: Int -> Int;
  xlt,      \* transfer-length consistency：x 实际带的 token 数 lt（push：P 发出时 = 源页上 P 算出的数；pull：P 暴露时；之前为 0）
  \* ---- 控制面 ----
  \* @type: Set({t: Str, fr: Int, to: Int, r: Int, g: Int, x: Int, pg: Int, pe: Int, ok: Bool});
  net,
  \* ---- 幽灵 ----
  \* @type: Int -> (Int -> Int);
  drep,     \* D 对 (r, g) 发出的终态回复数
  \* @type: Int -> (Int -> Str);
  crep,     \* 客户端对 (r, g) 收到的回复："none" | "ok" | "err" | "two"
  \* @type: Int -> (Int -> Bool);
  dsucc,    \* D 真的读着落地的页做完了 (r, g)
  \* @type: Bool;
  gbad      \* 曾有一条代际不符的消息被采用

rtV   == <<gen, rt, rp, rd, hp, hd>>
kV    == <<kpin, kfly, krs>>
instV == <<alive, nfail, torn, kV>>   \* KernelReadPins：kernel 步是实例级状态；只有 KLaunch / KLand / KDone 改 kV
recV  == <<ph, rg, rpg, rpe, rx, rhit>>
pgV   == <<pst, pr, pgn, plt, ptl, pvis, led, sfly, sled, prefc, pqp>>
xV    == <<xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, xst, nx>>
ghV   == <<drep, crep, dsucc, gbad>>
basevars == <<rtV, instV, recV, pgV, xV, net, ghV>>

\* B2 proposal: suffix protocol is unchanged; prefix slots are a separate P pool.
\* D's destination is an aggregate full-payload receive buffer (dpreOK checks prefix).
VARIABLES
  \* @type: Int -> Str;
  spst,
  \* @type: Int -> Int;
  sown,
  \* @type: Int -> Int;
  sgen,
  \* @type: Int -> Int;
  skey,
  \* @type: Int -> Bool;
  swrite,
  \* @type: Int -> Bool;
  sdata,
  \* @type: Int -> Bool;
  sready,
  \* @type: Int -> Int;
  sprefc,
  \* @type: Int -> (Int -> Int);
  smap,
  \* @type: Int -> (Int -> Bool);
  schoice,
  \* @type: Set(<<Int, Int, Int, Int>>);
  rpgS,
  \* @type: Int -> Set(Int);
  xsrcS,
  \* @type: Int -> Set(Int);
  xsrcP,
  \* @type: Set(Int);
  sentry,
  \* @type: Set(<<Int, Int>>);
  squar,
  \* @type: Int -> Bool;
  xprefixOK,
  \* @type: Int -> Bool;
  dpreOK,
  \* @type: Bool;
  hitSeen,
  \* @type: Bool;
  dedupSeen
sV == <<spst, sown, sgen, skey, swrite, sdata, sready, sprefc, smap, schoice, rpgS,
        xsrcS, xsrcP, sentry, squar, xprefixOK, dpreOK, hitSeen, dedupSeen>>
vars == <<basevars, sV>>
\* Token-page identity deliberately has two values; requests in the same generation
\* share a prefix, a later generation may have a different prefix.
STok(r, g) == 1 + ((g - 1) % 2)
\* @type: (Int, Int, Int, Int) => <<Int, Int, Int, Int>>;
SH(i, r, g, p) == <<i, r, g, p>>
\* @type: <<Int, Int, Int, Int>> => Bool;
SHPin(h) == \E k \in KSlots : kpin[h[1]][k] /\ \E e \in krs[h[1]][k] : e[1] = h[2] /\ e[2] = h[3] /\ e[3] = h[4]
SPin(p) == \E i \in PInst, k \in KSlots : kpin[i][k] /\ \E e \in krs[i][k] : e[3] = p
\* @type: (Set(<<Int, Int, Int, Int>>), Int) => Int;
SRefR(H, p) == Cardinality({h \in H : h[4] = p})
\* @type: (Set(Int), Int -> Set(Int), Int) => Int;
SRefE(E, X, p) == Cardinality({x \in E : p \in X[x]})
\* @type: (Set(<<Int, Int>>), Int) => Int;
SRefQ(Q, p) == Cardinality({h \in Q : h[2] = p})
SSendReady(i, r) == schoice[i][r] /\ (IF smap[i][r] = 0 THEN TRUE ELSE spst[smap[i][r]] = "shared" \/ (Mut = "postBeforeDedup" /\ sready[smap[i][r]]))
SRowReady(i, r) == schoice[i][r] /\ (IF smap[i][r] = 0 THEN TRUE ELSE
  spst[smap[i][r]] \in {"priv", "shared"} /\ sready[smap[i][r]])
\* @type: (Int, Set(Int)) => Set(<<Int, Int, Int, Int>>);
SRows(i, rows) == IF B2 /\ IsP(i) THEN
  {<<r, rg[i][r], smap[i][r], IF spst[smap[i][r]] = "shared" THEN 1 ELSE 4>> :
    r \in {r \in rows : smap[i][r] # 0}} ELSE {}
\* @type: <<Int, Int, Int, Int>> => Bool;
SHeld(e) == IF e[4] = 1 THEN spst[e[3]] = "shared"
  ELSE spst[e[3]] \in {"priv", "shared", "dup", "drain", "quar"} /\ sown[e[3]] = e[1] /\ sgen[e[3]] = e[2]
\* @type: <<Int, Int, Int, Int>> => Bool;
SData(e) == sdata[e[3]] /\ ~swrite[e[3]] /\ skey[e[3]] = STok(e[1], e[2])
SInit ==
  /\ spst = [p \in SPages |-> IF B2 /\ (p - NP - 1) % SWidth = 0 THEN "shared" ELSE "free"]
  /\ sown = [p \in SPages |-> 0] /\ sgen = [p \in SPages |-> 0]
  /\ skey = [p \in SPages |-> IF B2 /\ (p - NP - 1) % SWidth = 0 THEN 1 ELSE 0]
  /\ swrite = [p \in SPages |-> FALSE]
  /\ sdata = [p \in SPages |-> B2 /\ (p - NP - 1) % SWidth = 0]
  /\ sready = sdata /\ sprefc = [p \in SPages |-> 0]
  /\ smap = [i \in PInst |-> [r \in Rq |-> 0]] /\ schoice = [i \in PInst |-> [r \in Rq |-> FALSE]]
  /\ rpgS = {} /\ xsrcS = [x \in Xids |-> {}] /\ xsrcP = [x \in Xids |-> {}]
  /\ sentry = {} /\ squar = {} /\ xprefixOK = [x \in Xids |-> FALSE] /\ dpreOK = [p \in Pages |-> FALSE]
  /\ hitSeen = FALSE /\ dedupSeen = FALSE

BaseInit ==
  /\ gen = [r \in Rq |-> 0] /\ rt = [r \in Rq |-> "idle"] /\ rp = [r \in Rq |-> 0] /\ rd = [r \in Rq |-> 0]
  /\ hp = [r \in Rq |-> [g \in Gens |-> 0]] /\ hd = [r \in Rq |-> [g \in Gens |-> 0]]
  /\ alive = [i \in Inst |-> TRUE] /\ nfail = 0 /\ torn = [i \in Inst |-> {}]
  /\ kpin = [i \in Inst |-> [s \in KSlots |-> FALSE]] /\ kfly = [i \in Inst |-> [s \in KSlots |-> FALSE]]
  /\ krs = [i \in Inst |-> [s \in KSlots |-> {}]]
  /\ ph = [i \in Inst |-> [r \in Rq |-> "none"]] /\ rg = [i \in Inst |-> [r \in Rq |-> 0]]
  /\ rpg = [i \in Inst |-> [r \in Rq |-> 0]] /\ rpe = [i \in Inst |-> [r \in Rq |-> 0]]
  /\ rx = [i \in Inst |-> [r \in Rq |-> 0]] /\ rhit = [i \in Inst |-> [r \in Rq |-> FALSE]]
  /\ pst = [p \in Pages |-> "free"] /\ pr = [p \in Pages |-> 0] /\ pgn = [p \in Pages |-> 0]
  /\ plt = [p \in Pages |-> 0] /\ ptl = [p \in Pages |-> 0] /\ pvis = [p \in Pages |-> FALSE] /\ led = [p \in Pages |-> {}]
  /\ sfly = [p \in Pages |-> {}] /\ sled = [p \in Pages |-> {}] /\ prefc = [p \in Pages |-> 0] /\ pqp = [p \in Pages |-> 0]
  /\ xr = [x \in Xids |-> 0] /\ xg = [x \in Xids |-> 0] /\ xk = [x \in Xids |-> "none"]
  /\ xp = [x \in Xids |-> 0] /\ xd = [x \in Xids |-> 0] /\ xsrc = [x \in Xids |-> 0] /\ xdst = [x \in Xids |-> 0]
  /\ xnt = [x \in Xids |-> 0] /\ hw = [x \in Xids |-> "none"] /\ hok = [x \in Xids |-> FALSE]
  /\ iv = [x \in Xids |-> "none"] /\ xst = [x \in Xids |-> "none"] /\ nx = 1 /\ xlt = [x \in Xids |-> 0]
  /\ net = {}
  /\ drep = [r \in Rq |-> [g \in Gens |-> 0]] /\ crep = [r \in Rq |-> [g \in Gens |-> "none"]]
  /\ dsucc = [r \in Rq |-> [g \in Gens |-> FALSE]] /\ gbad = FALSE

\* ============================ 辅助 ============================
Active(i, r) == ph[i][r] \notin {"none", "end"}
\* 超时：Faults 时随时可触发（最宽：超时和网络延迟无关）；否则只在对端挂住时
TOk(peer) == Faults \/ (peer \in Inst /\ ~alive[peer])
\* xfer x 在页 p 一侧的对端实例
PeerOf(x, p) == IF Loc(p) = xp[x] THEN xd[x] ELSE xp[x]
\* 新请求记录：只接受比记录更新的代（代际过滤）；noGeneration：只要代不同就接受
NewGen(i, r, g) == \/ ph[i][r] = "none"
                   \/ ph[i][r] = "end" /\ (g > rg[i][r] \/ (Mut = "noGeneration" /\ g # rg[i][r]))
\* 请求级消息的代际过滤
GenOK(i, r, g) == g = rg[i][r] \/ Mut = "noGeneration"
Bump(n) == IF n < 2 THEN n + 1 ELSE 2
\* 本地流 op 的标签：发起它的 (槽, 代)
\* @type: (Int, Int) => <<Int, Int>>;
Tag(r, g) == <<r, g>>
\* Unquar：x 的两端之间的 QP 已被某一端拆除（之后的 op 一律被拒）
InFl(x) == hw[x] \in {"fly", "issued"}
Torn(x) == (xp[x] \in Inst /\ xd[x] \in torn[xp[x]]) \/ (xd[x] \in Inst /\ xp[x] \in torn[xd[x]])

\* KernelReadPins：页 p 在本实例某个已发射、还没 KDone 的步的读集合里（一个步一条钉）
KPinned(p) == \E s \in KSlots : kpin[Loc(p)][s] /\ \E e \in krs[Loc(p)][s] : e[3] = p
\* 放页判断把钉算进在途账本（变异 kFreeUnderRead：不看钉）；解除隔离另有变异 kQuarRelUnderRead
PinBlocks(p) == KPinned(p) /\ Mut # "kFreeUnderRead"
QPinBlocks(p) == PinBlocks(p) /\ Mut # "kQuarRelUnderRead"
\* 记录拿到证据正常结束、页的 RDMA / 本地流账本都已空：没有钉 → Free，被钉 → Drain（KDone 时回 Free）
FreeOrDrain(p) == IF PinBlocks(p) THEN "drain" ELSE "free"

\* 页 p 换状态（free 时清掉主人、账本、引用）
PageTo(p, s, q, nl, ns) ==
  /\ pst' = [pst EXCEPT ![p] = s]
  /\ pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE pqp[p]]
  /\ IF s = "free"
     THEN /\ pr' = [pr EXCEPT ![p] = 0] /\ pgn' = [pgn EXCEPT ![p] = 0] /\ plt' = [plt EXCEPT ![p] = 0]
          /\ led' = [led EXCEPT ![p] = {}] /\ sled' = [sled EXCEPT ![p] = {}] /\ prefc' = [prefc EXCEPT ![p] = 0]
     ELSE /\ led' = [led EXCEPT ![p] = nl] /\ sled' = [sled EXCEPT ![p] = ns]
          /\ UNCHANGED <<pr, pgn, plt, prefc>>

\* 放弃页 p（记录结束）：账本空 → Free；有在途 → Draining（abort）或 Quarantined（timeout，且有远端在途）
\* decode growth and cancellation：GiveUpToN 按给定的 RDMA 账本 nl 判（PEnd 先取消登记态的 x 之后的账本）；GiveUpTo = 用页现在的账本，与旧行为相同
GiveUpToN(p, how, nl) ==
  IF nl = {} /\ sled[p] = {} /\ ~PinBlocks(p) THEN (IF Mut = "leakOnAbort" /\ how = "abort" /\ IsD(Loc(p)) THEN "priv" ELSE "free")
  ELSE IF nl = {} /\ sled[p] = {} THEN "drain"   \* KernelReadPins：只剩 kernel 步的钉（本地，最终完成）：Drain，不隔离
  ELSE IF Mut = "sourceFreedBeforeAck" /\ Mode = "pull" /\ IsP(Loc(p)) /\ sled[p] = {} THEN "free"
  ELSE IF how = "timeout" /\ nl # {} THEN (IF Mut = "timeoutRelease" THEN "free" ELSE "quar")
  ELSE "drain"
GiveUpTo(p, how) == GiveUpToN(p, how, led[p])

\* decode growth and cancellation（DGrow，①）：D 记录 (j, r) 解码时加的页 = 本实例上属于这一代、不是记录映射页 rpg 的私有页（rpg 是暴露 / 命中的
\* 那一页；加页不暴露、没有 RDMA / 本地流账本，K16）
GrownOf(j, r) == {q \in Pages : IsD(j) /\ Loc(q) = j /\ q # rpg[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = rg[j][r]}
\* 记录结束时放加页：只看 kernel 钉。没钉 → Free，被钉 → Drain（KDone 时回 Free）。变异 growFreeUnderPin：不看钉
GTo(q) == IF PinBlocks(q) /\ Mut # "growFreeUnderPin" THEN "drain" ELSE "free"
GFr(G, q) == q \in G /\ GTo(q) = "free"
\* 加页 G 回 Free 时清掉主人和写进度（RDMA / 本地流账本本来就空，refc、pqp 本来就是 0；pst' 由调用处写）
GrownOwn(G) ==
  /\ pr' = [x \in Pages |-> IF GFr(G, x) THEN 0 ELSE pr[x]]
  /\ pgn' = [x \in Pages |-> IF GFr(G, x) THEN 0 ELSE pgn[x]]
  /\ plt' = [x \in Pages |-> IF GFr(G, x) THEN 0 ELSE plt[x]]
\* PageTo，外加同一步里放掉一组加页 G（G 不含 p；G = {} 时与 PageTo(p, s, q, nl, ns) 逐个变量相同）
PageToG(p, s, q, nl, ns, G) ==
  /\ pst' = [x \in Pages |-> IF x = p THEN s ELSE IF x \in G THEN GTo(x) ELSE pst[x]]
  /\ pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE pqp[p]]
  /\ led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  /\ sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  /\ prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE prefc[p]]
  /\ pr' = [x \in Pages |-> IF (x = p /\ s = "free") \/ GFr(G, x) THEN 0 ELSE pr[x]]
  /\ pgn' = [x \in Pages |-> IF (x = p /\ s = "free") \/ GFr(G, x) THEN 0 ELSE pgn[x]]
  /\ plt' = [x \in Pages |-> IF (x = p /\ s = "free") \/ GFr(G, x) THEN 0 ELSE plt[x]]

\* 账本去掉 x 之后的页状态：Draining 的页账本清空即回 Free（原子）
\* @type: (Int, Set(Int), Set(<<Int, Int>>)) => Str;
AfterEv(p, nl, ns) == IF pst[p] = "drain" /\ nl = {} /\ ns = {} /\ ~PinBlocks(p) THEN "free" ELSE pst[p]
EvidenceAt(p, x) ==
  LET nl == led[p] \ {x} IN PageTo(p, AfterEv(p, nl, sled[p]), pqp[p], nl, sled[p])

\* ============================ 路由器 ============================
Arrive(r, i, j) ==
  /\ IsP(i) /\ IsD(j) /\ rt[r] # "wait" /\ gen[r] < MG
  /\ LET g == gen[r] + 1 IN
       /\ gen' = [gen EXCEPT ![r] = g]
       /\ rt' = [rt EXCEPT ![r] = "wait"]
       /\ rp' = [rp EXCEPT ![r] = i] /\ rd' = [rd EXCEPT ![r] = j]
       /\ hp' = [hp EXCEPT ![r][g] = i] /\ hd' = [hd EXCEPT ![r][g] = j]
       /\ net' = net \cup {Msg("req", 0, i, r, g, 0, 0, j, FALSE), Msg("req", 0, j, r, g, 0, 0, i, FALSE)}
  /\ UNCHANGED <<instV, recV, pgV, xV, ghV>>

\* 路由器的期限：给客户端错误，并通知 P、D abort
RTimeout(r) ==
  /\ rt[r] = "wait" /\ (Faults \/ ~alive[rp[r]] \/ ~alive[rd[r]]) /\ ~NoDLRouter
  /\ rt' = [rt EXCEPT ![r] = "err"]
  /\ crep' = [crep EXCEPT ![r][gen[r]] = IF crep[r][gen[r]] = "none" THEN "err" ELSE "two"]
  /\ net' = net \cup {Msg("abort", 0, rp[r], r, gen[r], 0, 0, 0, FALSE), Msg("abort", 0, rd[r], r, gen[r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<gen, rp, rd, hp, hd, instV, recV, pgV, xV, drep, dsucc, gbad>>

RRecvReply(r) ==
  /\ rt[r] = "wait"
  /\ \E m \in net :
       /\ m.t = "reply" /\ m.r = r /\ (m.g = gen[r] \/ Mut = "noGeneration")
       /\ rt' = [rt EXCEPT ![r] = IF m.ok THEN "ok" ELSE "err"]
       /\ crep' = [crep EXCEPT ![r][gen[r]] = IF crep[r][gen[r]] # "none" THEN "two" ELSE IF m.ok THEN "ok" ELSE "err"]
       /\ gbad' = (gbad \/ m.g # gen[r])
  /\ UNCHANGED <<gen, rp, rd, hp, hd, instV, recV, pgV, xV, net, drep, dsucc>>

\* ============================ P ============================
\* 收到请求：分一页源页，发射 prefill（本地流写，记进 sled）；没页则经 D 报错
PRecvReq(i, r) ==
  /\ IsP(i) /\ alive[i]
  /\ \E m \in net :
       /\ m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i, r, m.g)
       /\ gbad' = (gbad \/ (ph[i][r] = "end" /\ m.g <= rg[i][r]))
       /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe] /\ rx' = [rx EXCEPT ![i][r] = 0]
       /\ led' = IF Mut = "inflightResetOnReuse"      \* 新一代开始时清掉这个槽的在途记账
                 THEN [p \in Pages |-> IF Loc(p) = i THEN {x \in led[p] : xr[x] # r} ELSE led[p]] ELSE led
       /\ IF \E p \in Pages : Loc(p) = i /\ pst[p] = "free"
          THEN \E p \in Pages :
                 /\ Loc(p) = i /\ pst[p] = "free"
                 /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r] /\ pgn' = [pgn EXCEPT ![p] = m.g]
                 /\ plt' = [plt EXCEPT ![p] = 0] /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r, m.g)}] /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r, m.g)}]
                 /\ ph' = [ph EXCEPT ![i][r] = "pre"] /\ rpg' = [rpg EXCEPT ![i][r] = p]
                 /\ UNCHANGED <<prefc, pqp, net>>
          ELSE /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rpg' = [rpg EXCEPT ![i][r] = 0]
               /\ net' = net \cup {Msg("abort", i, m.pe, r, m.g, 0, 0, 0, FALSE)}
               /\ UNCHANGED <<pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp>>
  /\ UNCHANGED <<rtV, instV, rhit, xV, drep, crep, dsucc>>

\* prefill 的事件查询为真（op 真的完成了）：P 的核心记下 prefill 写下的 token 数（BadLen 关时 = 计划 NTok）
PPoll(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "pre"
  /\ LET p == rpg[i][r]
         t == Tag(r, rg[i][r])
     IN /\ t \notin sfly[p] /\ t \in sled[p]
        /\ sled' = [sled EXCEPT ![p] = @ \ {t}]
        /\ plt' = [plt EXCEPT ![p] = ptl[p]]
        /\ ph' = [ph EXCEPT ![i][r] = "ready"]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pst, pr, pgn, ptl, pvis, led, sfly, prefc, pqp, xV, net, ghV>>

\* Ready 或（变异 sendEarly：prefill 还没确认）
SendReady(i, r) == /\ ph[i][r] = "ready" \/ (Mut = "sendEarly" /\ ph[i][r] = "pre")
                   /\ ~B2 \/ SSendReady(i, r)
\* P 报给 D 的 lt：设计里 = P 记下的 prefill 写下的数；变异 sendEarly 在 prefill 确认之前就发，报的是计划长度（prompt 长度）
LtOf(i, r) == IF ph[i][r] = "pre" THEN NTok(r, rg[i][r]) ELSE plt[rpg[i][r]]

\* push：收到 D 的 dinfo(r, g, x, q) 后发 WRITE x（x = 0：D 前缀命中、不用传；x 已 nopost：放弃）
PPost(i, r) ==
  /\ Mode = "push" /\ IsP(i) /\ alive[i] /\ SendReady(i, r)
  /\ \E m \in net :
       /\ m.t = "dinfo" /\ m.to = i /\ m.r = r /\ GenOK(i, r, m.g)
       /\ gbad' = (gbad \/ m.g # rg[i][r])
       /\ LET p == rpg[i][r] IN
          IF m.x = 0 \/ iv[m.x] # "none"
          THEN /\ ph[i][r] = "ready" /\ led[p] = {} /\ sled[p] = {}
               /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
               /\ PageTo(p, FreeOrDrain(p), 0, {}, {})
               /\ UNCHANGED <<xV, net>>
          ELSE \* PReg（= glue p_post）：只登记（iv = reg，源页进账本，WRITE 还没交给传输库，可取消）；否则登记 + 提交一步做完
               /\ iv' = [iv EXCEPT ![m.x] = IF PReg THEN "reg" ELSE "posted"]
               \* Unquar：到已拆除的对端不能再发（连接被拒，op 立即以失败停下、不落地）
               /\ hw' = IF PReg THEN hw ELSE [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"]
               /\ hok' = IF PReg THEN hok ELSE [hok EXCEPT ![m.x] = FALSE]
               /\ xsrc' = [xsrc EXCEPT ![m.x] = p] /\ xlt' = [xlt EXCEPT ![m.x] = LtOf(i, r)]   \* transfer-length consistency：x 带的 token 数 = P 记下的数
               /\ led' = [led EXCEPT ![p] = @ \cup {m.x}]
               /\ ph' = [ph EXCEPT ![i][r] = IF PReg THEN "reg" ELSE "sent"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
               \* 变异 noticeBeforeCompletion（Mooncake#3406）：发出 WRITE 就发成功 notice（pe = 0：没看到完成事件）；PReg 下在 PSubmit 里发
               /\ net' = IF Mut = "noticeBeforeCompletion" /\ ~PReg
                         THEN net \cup {Msg("notice", i, m.fr, r, m.g, m.x, LtOf(i, r), 0, TRUE)} ELSE net
               /\ UNCHANGED <<pst, pr, pgn, plt, sled, prefc, pqp, xr, xg, xk, xp, xd, xdst, xnt, xst, nx>>
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rhit, ptl, pvis, sfly, drep, crep, dsucc>>

\* push：P 的 WRITE 有了完成事件，源页放回 Free
PSentDone(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "sent" /\ iv[rx[i][r]] = "cqe"
  /\ LET p == rpg[i][r] IN
       /\ led[p] = {} /\ sled[p] = {}
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, FreeOrDrain(p), 0, {}, {})
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, net, ghV>>

\* 发起方的库返回失败或超时（不是已停证据）：发起方的页隔离，通知对端
PSentFailBroken(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "sent" /\ iv[rx[i][r]] = "failret"
  /\ LET p == rpg[i][r] IN
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, "free", 0, {}, {})
               /\ net' = net \cup {Msg("notice", i, rpe[i][r], r, rg[i][r], rx[i][r], xlt[rx[i][r]], 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, ghV>>


PSentFailSafe(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "sent" /\ iv[rx[i][r]] = "failret"
  /\ LET p == rpg[i][r] IN
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, GiveUpTo(p, "timeout"), rpe[i][r], led[p], sled[p])
               /\ net' = net \cup {Msg("abort", i, rpe[i][r], r, rg[i][r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, ghV>>


PSentFail(i, r) == IF Mut = "failedAsDrained" THEN PSentFailBroken(i, r) ELSE PSentFailSafe(i, r)

\* pull：P 暴露源页，建 xfer 记录 x，发 sinfo(r, g, x, p)
PExpose(i, r) ==
  /\ Mode = "pull" /\ IsP(i) /\ alive[i] /\ SendReady(i, r) /\ nx <= MX
  /\ LET x == nx
         p == rpg[i][r]
         g == rg[i][r]
     IN /\ nx' = nx + 1
        /\ xr' = [xr EXCEPT ![x] = r] /\ xg' = [xg EXCEPT ![x] = g] /\ xk' = [xk EXCEPT ![x] = "rd"]
        /\ xp' = [xp EXCEPT ![x] = i] /\ xd' = [xd EXCEPT ![x] = rpe[i][r]]
        /\ xsrc' = [xsrc EXCEPT ![x] = p] /\ xnt' = [xnt EXCEPT ![x] = NTok(r, g)] /\ xlt' = [xlt EXCEPT ![x] = LtOf(i, r)]
        /\ xst' = [xst EXCEPT ![x] = "posted"]
        /\ led' = [led EXCEPT ![p] = @ \cup {x}]
        /\ ph' = [ph EXCEPT ![i][r] = "exp"] /\ rx' = [rx EXCEPT ![i][r] = x]
        /\ net' = net \cup {Msg("sinfo", i, rpe[i][r], r, g, x, p, LtOf(i, r), FALSE)}   \* transfer-length consistency：sinfo 的 pe 字段 = lt
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rhit, pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp, xdst, hw, hok, iv, ghV>>

\* pull：D 的 ReleaseSource 到了（XRecvRel 已更新 xst），源页放回 Free
PExpDone(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "exp" /\ xst[rx[i][r]] \in {"landed", "failed"}
  /\ LET p == rpg[i][r] IN
       /\ led[p] = {} /\ sled[p] = {}
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, FreeOrDrain(p), 0, {}, {})
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, net, ghV>>

\* P 结束一个活记录（abort 消息或超时）：源页按账本 Free / Draining / Quarantined，通知 D。
\* decode growth and cancellation（PReg 超时修法）：记录还在登记态（x 登记了、从未交给传输库）时先按 PCancelReg 的效果
\*   取消 x（x 出源页账本、iv → nopost、给 D 回 nopost = ABORT_ACK），再按剩下的账本放页；只有交给了传输库的 x 才让源页隔离。
\*   变异 pEndNoCancel：不先取消（旧行为）
PEnd(i, r, how) ==
  LET p  == rpg[i][r]
      x  == rx[i][r]
      cr == ph[i][r] = "reg" /\ x \in Xids /\ iv[x] = "reg" /\ Mut # "pEndNoCancel"
      nl == IF cr THEN led[p] \ {x} ELSE led[p]
  IN /\ ph' = [ph EXCEPT ![i][r] = "end"]
     /\ PageTo(p, GiveUpToN(p, how, nl), rpe[i][r], nl, sled[p])
     /\ iv' = IF cr THEN [iv EXCEPT ![x] = "nopost"] ELSE iv
     /\ net' = net \cup {Msg("abort", i, rpe[i][r], r, rg[i][r], 0, 0, 0, FALSE)}
                   \cup (IF cr THEN {Msg("nopost", i, xd[x], r, xg[x], x, 0, 0, FALSE)} ELSE {})
     /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly,
                    xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, drep, crep, dsucc>>

PAbort(i, r) ==
  /\ IsP(i) /\ alive[i] /\ Active(i, r)
  /\ \E m \in net :
       /\ m.t = "abort" /\ m.to = i /\ m.r = r /\ GenOK(i, r, m.g)
       /\ gbad' = (gbad \/ m.g # rg[i][r])
       /\ PEnd(i, r, "abort")

PTimeout(i, r) ==
  /\ IsP(i) /\ alive[i] /\ Active(i, r) /\ TOk(rpe[i][r]) /\ ~NoDLP
  /\ PEnd(i, r, "timeout") /\ UNCHANGED gbad

\* push：记录已结束（或已放弃）后才到的 dinfo，或 D 的 revoke：x 还没发出就承诺永不发出，回 nopost
PNoPost(i) ==
  /\ Mode = "push" /\ IsP(i) /\ alive[i]
  /\ \E m \in net :
       /\ m.to = i /\ m.x \in Xids /\ iv[m.x] = "none"
       /\ \/ m.t = "revoke"
          \/ m.t = "dinfo" /\ ph[i][m.r] = "end" /\ rg[i][m.r] = m.g
       /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
       /\ net' = net \cup {Msg("nopost", i, m.fr, m.r, m.g, m.x, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* ============================ D ============================
\* 收到请求：前缀命中共享页（不用传）、分一页目的页（push：建 xfer x 并暴露）、或无容量报错
DResetLedger(j,r) == IF Mut = "inflightResetOnReuse" THEN [p \in Pages |-> IF Loc(p)=j THEN {x \in led[p] : xr[x] # r} ELSE led[p]] ELSE led
DRecvReq(j, r) ==
  /\ IsD(j) /\ alive[j]
  /\ \E m \in net :
       /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j, r, m.g)
       /\ gbad' = (gbad \/ (ph[j][r] = "end" /\ m.g <= rg[j][r]))
       /\ rg' = [rg EXCEPT ![j][r] = m.g] /\ rpe' = [rpe EXCEPT ![j][r] = m.pe]
       /\
          \/ \* 前缀命中：映射共享页、发射 decode op、直接运行；push 告诉 P 不用传
             /\ ~B2 /\ NTok(r, m.g) = PS
             /\ \E s \in Pages :
                  /\ Loc(s) = j /\ pst[s] = "shared"
                  /\ prefc' = [prefc EXCEPT ![s] = @ + 1]
                  /\ sfly' = [sfly EXCEPT ![s] = @ \cup {Tag(r, m.g)}] /\ sled' = [sled EXCEPT ![s] = @ \cup {Tag(r, m.g)}]
                  /\ ph' = [ph EXCEPT ![j][r] = "run"] /\ rpg' = [rpg EXCEPT ![j][r] = s]
                  /\ rhit' = [rhit EXCEPT ![j][r] = TRUE] /\ rx' = [rx EXCEPT ![j][r] = 0]
                  /\ net' = net \cup (IF Mode = "push" THEN {Msg("dinfo", j, m.pe, r, m.g, 0, s, 0, FALSE)} ELSE {})
                  /\ led' = DResetLedger(j,r)
                  /\ UNCHANGED <<pst, pr, pgn, plt, ptl, pvis, pqp, xV, drep>>
          \/ \* 分配目的页
             /\ Mode = "pull" \/ nx <= MX
             /\ \E q \in Pages :
                  /\ Loc(q) = j /\ pst[q] = "free"
                  /\ pst' = [pst EXCEPT ![q] = "priv"] /\ pr' = [pr EXCEPT ![q] = r] /\ pgn' = [pgn EXCEPT ![q] = m.g]
                  /\ plt' = [plt EXCEPT ![q] = 0] /\ ptl' = [ptl EXCEPT ![q] = 0] /\ pvis' = [pvis EXCEPT ![q] = FALSE]
                  /\ rpg' = [rpg EXCEPT ![j][r] = q] /\ rhit' = [rhit EXCEPT ![j][r] = FALSE]
                  /\ ph' = [ph EXCEPT ![j][r] = "wait"]
                  /\ IF Mode = "push"
                     THEN LET x == nx IN
                          /\ nx' = nx + 1
                          /\ xr' = [xr EXCEPT ![x] = r] /\ xg' = [xg EXCEPT ![x] = m.g] /\ xk' = [xk EXCEPT ![x] = "wr"]
                          /\ xp' = [xp EXCEPT ![x] = m.pe] /\ xd' = [xd EXCEPT ![x] = j]
                          /\ xdst' = [xdst EXCEPT ![x] = q] /\ xnt' = [xnt EXCEPT ![x] = NTok(r, m.g)]
                          /\ xst' = [xst EXCEPT ![x] = "posted"]
                          /\ led' = [DResetLedger(j,r) EXCEPT ![q] = {x}]
                          /\ rx' = [rx EXCEPT ![j][r] = x]
                          /\ net' = net \cup {Msg("dinfo", j, m.pe, r, m.g, x, q, 0, FALSE)}
                          /\ UNCHANGED <<xsrc, xlt, hw, hok, iv>>
                     ELSE /\ rx' = [rx EXCEPT ![j][r] = 0] /\ led' = DResetLedger(j,r)
                          /\ UNCHANGED <<xV, net>>
                  /\ UNCHANGED <<sfly, sled, prefc, pqp, drep>>
          \/ \* 没有容量：明确报错
             /\ ~(\E q \in Pages : Loc(q) = j /\ pst[q] = "free") \/ (Mode = "push" /\ nx > MX)
             /\ ph' = [ph EXCEPT ![j][r] = "end"] /\ rpg' = [rpg EXCEPT ![j][r] = 0] /\ rx' = [rx EXCEPT ![j][r] = 0]
             /\ rhit' = [rhit EXCEPT ![j][r] = FALSE]
             /\ drep' = [drep EXCEPT ![r][m.g] = Bump(@)]
             /\ net' = net \cup {Msg("reply", j, 0, r, m.g, 0, 0, 0, FALSE), Msg("abort", j, m.pe, r, m.g, 0, 0, 0, FALSE)}
             /\ led' = DResetLedger(j,r)
             /\ UNCHANGED <<pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp, xV>>
  /\ UNCHANGED <<rtV, instV, crep, dsucc>>

\* 发射 decode op（读写目的页）并进入 run；页的 landed_tokens 记成证据给出的值。
\* Flush：发射前做 cudaDeviceFlushGPUDirectRDMAWrites，只让"此刻已放置"的写变得可见（x 已 stop）
DStartRun(j, r, q, n, x) ==
  /\ ph' = [ph EXCEPT ![j][r] = "run"]
  /\ plt' = [plt EXCEPT ![q] = n]
  /\ pvis' = [pvis EXCEPT ![q] = IF Flush /\ hw[x] = "stop" THEN TRUE ELSE @]
  /\ sfly' = [sfly EXCEPT ![q] = @ \cup {Tag(r, rg[j][r])}] /\ sled' = [sled EXCEPT ![q] = @ \cup {Tag(r, rg[j][r])}]

\* push：暴露方 D 拿到 x 的落地证据（DInband / DRecvNotice）后开始 decode
DLanded(j, r) ==
  /\ Mode = "push" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait" /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "landed"
  /\ led[rpg[j][r]] = {}
  /\ DStartRun(j, r, rpg[j][r], xnt[rx[j][r]], rx[j][r])
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pst, pr, pgn, ptl, led, prefc, pqp, xV, net, ghV>>

\* push：x 已停但失败，或 P 承诺不发（nopost）：明确报错，页回 Free
DXferFailed(j, r) ==
  /\ Mode = "push" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait" /\ rx[j][r] \in Xids
  /\ xst[rx[j][r]] \in {"failed", "revoked"}
  /\ LET q == rpg[j][r] IN
       /\ led[q] = {} /\ sled[q] = {}
       /\ ph' = [ph EXCEPT ![j][r] = "end"]
       /\ PageTo(q, FreeOrDrain(q), 0, {}, {})
  /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
  /\ net' = net \cup {Msg("reply", j, 0, r, rg[j][r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc, gbad>>

\* pull：收到 sinfo(r, g, x, p)，D 发 READ x 进自己的目的页
DRecvSinfo(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait"
  /\ \E m \in net :
       /\ m.t = "sinfo" /\ m.to = j /\ m.r = r /\ GenOK(j, r, m.g) /\ m.x \in Xids /\ iv[m.x] = "none"
       /\ m.pe = NTok(r, rg[j][r]) \/ Mut = "ignoreLt"   \* transfer-length consistency：lt = D 的计划才读；否则 DSinfoBadLen
       /\ gbad' = (gbad \/ m.g # rg[j][r])
       /\ LET q == rpg[j][r] IN
            /\ iv' = [iv EXCEPT ![m.x] = "posted"]
            /\ hw' = [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"] /\ hok' = [hok EXCEPT ![m.x] = FALSE]
            /\ xdst' = [xdst EXCEPT ![m.x] = q]
            /\ led' = [led EXCEPT ![q] = @ \cup {m.x}]
            /\ ph' = [ph EXCEPT ![j][r] = "rd"] /\ rx' = [rx EXCEPT ![j][r] = m.x]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rhit, pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp,
                 xr, xg, xk, xp, xd, xsrc, xnt, xlt, xst, nx, net, drep, crep, dsucc>>

\* pull：D 的 READ 有完成事件（Cqe 已发 ReleaseSource）：成功则开始 decode，失败则报错、页回 Free
DReadDone(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "rd" /\ iv[rx[j][r]] = "cqe"
  /\ LET q == rpg[j][r]
         x == rx[j][r]
     IN /\ led[q] = {}
        /\ IF hok[x]
           THEN /\ DStartRun(j, r, q, xnt[x], x)
                /\ UNCHANGED <<pst, pr, pgn, led, prefc, pqp, drep, net>>
           ELSE /\ sled[q] = {}
                /\ ph' = [ph EXCEPT ![j][r] = "end"]
                /\ PageTo(q, FreeOrDrain(q), 0, {}, {})
                /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
                /\ net' = net \cup {Msg("reply", j, 0, r, rg[j][r], 0, 0, 0, FALSE)}
                /\ UNCHANGED <<sfly, pvis>>
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, xV, crep, dsucc, gbad>>

\* pull：D 的库返回失败或超时：目的页隔离，报错；不发 ReleaseSource（P 侧源页靠超时进隔离）
DReadFail(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "rd" /\ iv[rx[j][r]] = "failret"
  /\ LET q == rpg[j][r] IN
       /\ ph' = [ph EXCEPT ![j][r] = "end"]
       /\ PageTo(q, GiveUpTo(q, "timeout"), rpe[j][r], led[q], sled[q])
  /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
  /\ net' = net \cup {Msg("reply", j, 0, r, rg[j][r], 0, 0, 0, FALSE), Msg("abort", j, rpe[j][r], r, rg[j][r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc, gbad>>

\* pull：D 不再需要的 sinfo（记录已结束，或前缀命中）：x 永不读，直接回 ReleaseSource
DRelUnneeded(j) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j]
  /\ \E m \in net :
       /\ m.t = "sinfo" /\ m.to = j /\ m.x \in Xids /\ iv[m.x] = "none" /\ rg[j][m.r] = m.g
       /\ ph[j][m.r] = "end" \/ (ph[j][m.r] = "run" /\ rhit[j][m.r])
       /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
       /\ net' = net \cup {Msg("relsrc", j, m.fr, m.r, m.g, m.x, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* decode op 完成（事件查询为真）：回复成功；私有页封存为共享（整页落地）或放回 Free；命中的共享页引用 − 1
DFinish(j, r) ==
  /\ IsD(j) /\ alive[j] /\ ph[j][r] = "run"
  /\ (Tag(r, rg[j][r])) \notin sfly[(rpg[j][r])] /\ (Tag(r, rg[j][r])) \in sled[(rpg[j][r])]
  /\ ph' = [ph EXCEPT ![j][r] = "end"]
  /\ dsucc' = [dsucc EXCEPT ![r][(rg[j][r])] = TRUE]
  /\ drep' = [drep EXCEPT ![r][(rg[j][r])] = Bump(@)]
  /\ net' = net \cup {Msg("reply", j, 0, r, (rg[j][r]), 0, 0, 0, TRUE)}
  /\ IF rhit[j][r]
     THEN /\ prefc' = [prefc EXCEPT ![(rpg[j][r])] = @ - 1] /\ sled' = [sled EXCEPT ![(rpg[j][r])] = @ \ {(Tag(r, rg[j][r]))}]
          /\ pst' = [x \in Pages |-> IF x \in (GrownOf(j,r)) THEN GTo(x) ELSE pst[x]] /\ GrownOwn((GrownOf(j,r)))
          /\ UNCHANGED <<led, pqp>>
     ELSE /\ led[(rpg[j][r])] = {} /\ sled[(rpg[j][r])] = {(Tag(r, rg[j][r]))}
          /\ \/ \* 封存：Private → Shared，需要写已落地且整页（plt = PS）
                /\ ~B2 /\ (plt[(rpg[j][r])] = PS \/ (Mut = "sealPartial" /\ plt[(rpg[j][r])] >= 1))
                /\ pst' = [x \in Pages |-> IF x = (rpg[j][r]) THEN "shared" ELSE IF x \in (GrownOf(j,r)) THEN GTo(x) ELSE pst[x]]
                /\ prefc' = [prefc EXCEPT ![(rpg[j][r])] = 0]
                /\ sled' = [sled EXCEPT ![(rpg[j][r])] = {}]
                /\ GrownOwn((GrownOf(j,r))) /\ UNCHANGED <<led, pqp>>
             \/ PageToG((rpg[j][r]), FreeOrDrain((rpg[j][r])), 0, {}, {}, (GrownOf(j,r)))
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, gbad>>


\* overlapped-finish drain（开关 Ovl）：overlap 调度。D 的 decode op 已完成（这一步的结果已知），调度器已把包含这个请求的下一步发射出去：
\* 事件查询收掉上一步，同时发射下一步（同一标签再进 sfly），记录进 "ovl"
DLaunchNext(j, r) ==
  /\ Ovl /\ IsD(j) /\ alive[j] /\ ph[j][r] = "run"
  /\ LET q == rpg[j][r]
         t == Tag(r, rg[j][r])
     IN /\ t \notin sfly[q] /\ t \in sled[q]
        /\ sfly' = [sfly EXCEPT ![q] = @ \cup {t}]
        /\ ph' = [ph EXCEPT ![j][r] = "ovl"]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pst, pr, pgn, plt, ptl, pvis, led, sled, prefc, pqp, xV, net, ghV>>

\* overlapped-finish drain：ovl 的请求成功结束（回复成功照常）；下一步还在跑（sled 里还有它的标签）：私有页进 Drain(h)，只由 E1
\* （PagePoll，本地流完成）放回 Free；命中的共享页引用 − 1，标签留在 sled 里挡住淘汰。变异 freeOnFinish：直接放页
DFinishOvl(j, r) ==
  /\ IsD(j) /\ alive[j] /\ ph[j][r] = "ovl"
  /\ LET q == rpg[j][r]
         g == rg[j][r]
         G == GrownOf(j, r)   \* decode growth and cancellation：加页随记录一起放
     IN /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ dsucc' = [dsucc EXCEPT ![r][g] = TRUE]
        /\ drep' = [drep EXCEPT ![r][g] = Bump(@)]
        /\ net' = net \cup {Msg("reply", j, 0, r, g, 0, 0, 0, TRUE)}
        /\ IF rhit[j][r]
           THEN /\ prefc' = [prefc EXCEPT ![q] = @ - 1]
                /\ pst' = [x \in Pages |-> IF x \in G THEN GTo(x) ELSE pst[x]] /\ GrownOwn(G)
                /\ UNCHANGED <<led, sled, pqp>>
           ELSE PageToG(q, IF Mut = "freeOnFinish" THEN "free" ELSE GiveUpTo(q, "done"), 0, led[q], sled[q], G)
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, gbad>>
\* D 结束一个活记录（abort 或超时）：报错；push 时撤销暴露（revoke，尽力而为）；页按账本处理。
\* decode growth and cancellation：加页随记录一起放（设计里只有 run / ovl 的记录有加页；wait / rd 的其他结束路径——DXferFailed、¬ok notice 的隔离、
\*   BAD_LEN、pull 的读失败——只放记录映射的那一页，所以 DGrow 的 run 守卫承重：变异 growNoRun 在那些路径上漏页）
DEnd(j, r, how) ==
  LET q == rpg[j][r]
      g == rg[j][r]
      G == GrownOf(j, r)
  IN /\ ph' = [ph EXCEPT ![j][r] = "end"]
     /\ drep' = [drep EXCEPT ![r][g] = Bump(@)]
     /\ net' = net \cup {Msg("reply", j, 0, r, g, 0, 0, 0, FALSE), Msg("abort", j, rpe[j][r], r, g, 0, 0, 0, FALSE)}
                   \cup (IF Mode = "push" /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "posted"
                         THEN {Msg("revoke", j, rpe[j][r], r, g, rx[j][r], 0, 0, FALSE)} ELSE {})
     /\ IF rhit[j][r]
        THEN /\ prefc' = [prefc EXCEPT ![q] = @ - 1]
             /\ pst' = [x \in Pages |-> IF x \in G THEN GTo(x) ELSE pst[x]] /\ GrownOwn(G)
             /\ UNCHANGED <<led, sled, pqp>>
        ELSE PageToG(q, GiveUpTo(q, how), rpe[j][r], led[q], sled[q], G)

DAbort(j, r) ==
  /\ IsD(j) /\ alive[j] /\ Active(j, r)
  /\ \E m \in net :
       /\ m.t = "abort" /\ m.to = j /\ m.r = r /\ GenOK(j, r, m.g)
       /\ gbad' = (gbad \/ m.g # rg[j][r])
       /\ DEnd(j, r, "abort")
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc>>

DTimeout(j, r) ==
  /\ IsD(j) /\ alive[j] /\ Active(j, r) /\ TOk(rpe[j][r]) /\ ~NoDLD
  /\ DEnd(j, r, "timeout")
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc, gbad>>

\* ============================ 证据（与记录无关，按 xfer） ============================
\* 发起方的完成事件（库的完成，含重试队列已空）：
\*   push = P 的 WRITE：HComplete = narrow 时要求数据已放置（stop）；widest 时源已读完、对端网卡已确认即可（issued）。
\*   pull = D 的 READ：数据已放进 D 的页（stop，A3）。
\* 发起方的页去掉 x；push 发 notice(x, ok) 给 D（pe = 1：在完成事件之后发出），pull 发 ReleaseSource(x) 给 P
Cqe(x) ==
  /\ iv[x] = "posted"
  /\ LET ip == IF xk[x] = "wr" THEN xsrc[x] ELSE xdst[x]
         ii == Loc(ip)
     IN /\ alive[ii]
        \* U1：成功的完成事件在 HComplete narrow 下说明已放置；出错的完成事件不说明（之前已确认的字节可能还在放置），
        \* 所以 WRITE 的错误完成在 issued 时就可以出现
        /\ IF xk[x] = "wr" /\ (HComplete = "widest" \/ ~hok[x]) THEN hw[x] \in {"issued", "stop"} ELSE hw[x] = "stop"
        /\ iv' = [iv EXCEPT ![x] = "cqe"]
        /\ EvidenceAt(ip, x)
        /\ net' = net \cup {IF xk[x] = "wr"
                            THEN Msg("notice", ii, xd[x], xr[x], xg[x], x, xlt[x], 1, hok[x])   \* pg = lt；ok = 结局（issued 时已定）
                            ELSE Msg("relsrc", ii, xp[x], xr[x], xg[x], x, 0, 0, hok[x])}
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* push 暴露方 D 的证据 ①（PushEv = "inband"）：带内完成（A5，只在数据放置之后出现）
DInband(x) ==
  /\ Mode = "push" /\ PushEv = "inband" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]]
  /\ hw[x] = "stop" /\ hok[x]
  /\ xlt[x] = xnt[x] \/ Mut = "ignoreLt"   \* transfer-length consistency：带内完成也带 lt；lt ≠ 计划走 DBadLen
  /\ xst' = [xst EXCEPT ![x] = "landed"]
  /\ EvidenceAt(xdst[x], x)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx, net, ghV>>

\* push 暴露方 D 的证据 ②（PushEv = "notice"，SGLang/Mooncake 式）：P 的 notice(x, ok, lt)（lt 在字段 pg）。
\* 送达时机由环境决定：HOrder = strict 时，P 在完成事件之后发的 notice（pe = 1）要等数据放置后才送达；
\* widest 时任何时候都可送达。没在完成事件之后发的 notice（pe = 0，只有变异会发）不受 strict 保护。
\* 两支：
\*  ok 支：成功且 lt = 计划 → 落地证据，x 出账本（之后 DLanded：flush、run）；成功但 lt ≠ 计划走 DBadLen。
\*  ¬ok 支：不是已停证据（U1 按 SPEC 的保守取法定案）：x 留在账本，带 x 的页进隔离；D 的记录若还在等它，以错误结束。
\*        变异 nokFrees：把 ¬ok 当作"已停（失败）"证据，x 出账本（旧行为）。
DRecvNotice(x) ==
  /\ Mode = "push" /\ PushEv = "notice" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]]
  /\ \E m \in net :
       /\ m.t = "notice" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
       /\ (HOrder = "strict" /\ m.pe = 1) => hw[x] = "stop"
       /\ \/ /\ m.ok /\ (m.pg = xnt[x] \/ Mut = "ignoreLt")
             /\ xst' = [xst EXCEPT ![x] = "landed"]
             /\ EvidenceAt(xdst[x], x)
             /\ UNCHANGED <<ph, drep, net>>
          \/ /\ ~m.ok /\ Mut = "nokFrees"
             /\ xst' = [xst EXCEPT ![x] = "failed"]
             /\ EvidenceAt(xdst[x], x)
             /\ UNCHANGED <<ph, drep, net>>
          \/ /\ ~m.ok /\ Mut # "nokFrees"
             /\ pst[xdst[x]] \in {"priv", "drain"} /\ x \in led[xdst[x]]
             /\ PageTo((xdst[x]), "quar", xp[x], led[(xdst[x])], sled[(xdst[x])])
             /\ ph' = IF (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]]=xg[x] /\ rx[xd[x]][xr[x]]=x) THEN [ph EXCEPT ![(xd[x])][(xr[x])] = "end"] ELSE ph
             /\ drep' = IF (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]]=xg[x] /\ rx[xd[x]][xr[x]]=x) THEN [drep EXCEPT ![(xr[x])][xg[x]] = Bump(@)] ELSE drep
             /\ net' = IF (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]]=xg[x] /\ rx[xd[x]][xr[x]]=x) THEN net \cup {Msg("reply", (xd[x]), 0, (xr[x]), xg[x], 0, 0, 0, FALSE)} ELSE net
             /\ UNCHANGED xst
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx,
                 crep, dsucc, gbad>>

\* push 暴露方 D 的证据 ③：P 承诺 x 永不发出（nopost）
DRecvNopost(x) ==
  /\ Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]]
  /\ \E m \in net : m.t = "nopost" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
  /\ xst' = [xst EXCEPT ![x] = "revoked"]
  /\ EvidenceAt(xdst[x], x)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx, net, ghV>>

\* pull 暴露方 P 的证据：D 的 ReleaseSource(r, g, x)（D 在自己的完成事件之后、或承诺不读之后才发）
XRecvRel(x) ==
  /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted" /\ alive[xp[x]]
  /\ \E m \in net :
       /\ m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
       /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  /\ EvidenceAt(xsrc[x], x)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx, net, ghV>>

\* 本地流 op 的事件查询为真（记录已不在等它的情形）：从 sled 去掉；Draining 页账本清空即回 Free
PagePoll(p) ==
  /\ alive[Loc(p)]
  /\ \E t \in sled[p] :
       /\ t \notin sfly[p]
       /\ ~(ph[Loc(p)][t[1]] \in {"pre", "run", "ovl"} /\ rg[Loc(p)][t[1]] = t[2])
       /\ LET ns == sled[p] \ {t} IN PageTo(p, AfterEv(p, led[p], ns), pqp[p], led[p], ns)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* Draining 的页等不到远端证据：超时进隔离（第一步兜底：之后不再回 Free）
DrainTimeout(p) ==
  /\ pst[p] = "drain" /\ led[p] # {} /\ alive[Loc(p)]
  /\ ~(IsD(Loc(p)) /\ NoDLD) /\ ~(IsP(Loc(p)) /\ NoDLP)
  \* decode growth and cancellation（PReg 超时修法）：P 页账本里还有登记态（从未交给传输库）的 x 时不超时进隔离：
  \*   记录已正常结束（PRelease 在 reg，glue 的真实顺序 p_post → release → p_begin），这页的出口是 PCancelReg（使能条件相同：
  \*   P 活着、TOk(D)），不丢出口。变异 drainTimeoutReg：照旧超时
  /\ ~(IsP(Loc(p)) /\ \E x \in led[p] : iv[x] = "reg") \/ Mut = "drainTimeoutReg"
  /\ \E x \in led[p] :
       /\ TOk(PeerOf(x, p))
       /\ PageTo(p, IF Mut = "timeoutRelease" THEN "free" ELSE "quar", PeerOf(x, p), led[p], sled[p])
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>


\* Draining 的页账本空了就回 Free（实现里的"计数归零即释放"检查）。设计里账本只在证据动作里变空，那里已原子地
\* 放回 Free，所以这个动作在设计里永不使能（归纳不变式 K7：drain ⇒ 账本非空）；变异 inflightResetOnReuse 靠它暴露
DrainDone(p) ==
  /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ ~PinBlocks(p) /\ alive[Loc(p)]   \* KernelReadPins：钉也是在途
  /\ PageTo(p, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>
\* 淘汰共享页：没有引用、没有在途读
LegacyEvict(s) ==
  /\ pst[s] = "shared" /\ prefc[s] = 0 /\ led[s] = {} /\ sled[s] = {} /\ ~PinBlocks(s) /\ alive[Loc(s)]   \* KernelReadPins：被 kernel 读着的共享页不淘汰
  /\ PageTo(s, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* ============================ 对端故障 ============================
Hang(i) ==
  /\ alive[i] /\ nfail < MaxFail
  /\ alive' = [alive EXCEPT ![i] = FALSE] /\ nfail' = nfail + 1
  /\ UNCHANGED <<rtV, torn, kV, recV, pgV, xV, net, ghV>>

\* 挂住的实例恢复，重新握手（发 hello）；状态保留（只是停过）
Resume(i) ==
  /\ ~alive[i]
  /\ alive' = [alive EXCEPT ![i] = TRUE]
  /\ net' = net \cup {Msg("hello", i, 0, 0, 0, 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, nfail, torn, kV, recV, pgV, xV, ghV>>

\* 变异 unquarantineOnRehandshake：看到对端重新握手就把为它隔离的页放回 Free
RecvHello(j) ==
  /\ Mut = "unquarantineOnRehandshake" /\ alive[j]
  /\ \E m \in net, p \in Pages :
       /\ m.t = "hello" /\ m.fr # j /\ Loc(p) = j /\ pst[p] = "quar" /\ pqp[p] = m.fr
       /\ PageTo(p, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* Unquar（可选，第二步，A7）：j 拆掉到对端 i 的全部 QP（ERR/销毁、排空 CQ、清空重试队列、拒绝 i 重连）。
\* 环境效果：j 与 i 之间所有在途的 op 停下（失败、不再落地）；之后它们之间的 op 一律被拒（Torn）
Teardown(j, i) ==
  /\ Unquar /\ alive[j] /\ i \in Inst /\ i # j /\ i \notin torn[j]
  /\ \E p \in Pages : Loc(p) = j /\ pst[p] = "quar" /\ pqp[p] = i
  /\ torn' = [torn EXCEPT ![j] = @ \cup {i}]
  /\ LET K(x) == InFl(x) /\ {xp[x], xd[x]} = {i, j} IN
       /\ hw' = [x \in Xids |-> IF K(x) THEN "stop" ELSE hw[x]]
       /\ hok' = [x \in Xids |-> IF K(x) THEN FALSE ELSE hok[x]]
  /\ UNCHANGED <<rtV, alive, nfail, kV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, iv, xst, nx, net, ghV>>

\* Unquar：隔离页回 Free，条件：它在等的对端、以及账本里每个 xfer 的对端，都已被本端拆除；没有本地流 op
Unquarantine(p) ==
  /\ Unquar /\ pst[p] = "quar" /\ alive[Loc(p)]
  /\ pqp[p] \in torn[Loc(p)]
  /\ \A x \in led[p] : PeerOf(x, p) \in torn[Loc(p)]
  /\ sled[p] = {} /\ ~QPinBlocks(p)   \* KernelReadPins：被 kernel 读着的页不解除隔离（变异 kQuarRelUnderRead 不看）
  /\ PageTo(p, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* ============================ 环境：硬件和库 ============================
\* WRITE 的源已读完、对端网卡已确认（目的端可能还没放置）
HwIssue(x) ==
  /\ xk[x] = "wr" /\ hw[x] = "fly"
  /\ hw' = [hw EXCEPT ![x] = "issued"]
  \* 结局在源读完、对端网卡确认时就定了（Faults 下可以是失败：之后某个 slice 出错，已确认的字节仍在放置）
  /\ \E ok \in (IF Faults THEN BOOLEAN ELSE {TRUE}) : hok' = [hok EXCEPT ![x] = ok]
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, iv, xst, nx, net, ghV>>

Held(p, x) == pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = xr[x] /\ pgn[p] = xg[x]

\* op 停下：成功（目的页得到完整数据）或失败（部分写，H-partial）；落到不属于它的页 = 写坏别人（ptl = -1）
HwStop(x) ==
  /\ hw[x] \in {"fly", "issued"}
  /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE IF ~Faults THEN {TRUE} ELSE BOOLEAN) :
       /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
       /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]   \* 落下的是 x 实际带的 lt 个 token
       /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN HVisible = "narrow" ELSE @]
  /\ UNCHANGED <<rtV, instV, recV, pst, pr, pgn, plt, led, sfly, sled, prefc, pqp,
                 xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, iv, xst, nx, net, ghV>>

\* 库返回失败或超时（H-fail 最宽：op 可能还在跑，之后还可能重试落地；句柄丢弃，再也看不到完成事件）
LibFailRet(x) ==
  /\ Faults /\ iv[x] = "posted"
  /\ alive[Loc(IF xk[x] = "wr" THEN xsrc[x] ELSE xdst[x])]
  /\ iv' = [iv EXCEPT ![x] = "failret"]
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, net, ghV>>

\* 本地流 op 完成：P 的 prefill 写下 Len 个 token；落到不属于它的页 = 写坏别人
StreamLand(p) ==
  /\ \E t \in sfly[p] : \E n \in PLens(t[1], t[2]) :
       /\ sfly' = [sfly EXCEPT ![p] = @ \ {t}]
       \* P 的 prefill 写下 n 个 token（BadLen 关时 n = NTok；开时可以少一个：P 的输入和 D 的计划不一致）
       /\ ptl' = [ptl EXCEPT ![p] =
              IF pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
              THEN (IF IsP(Loc(p)) THEN n ELSE ptl[p])
              ELSE IF pst[p] = "shared" /\ IsD(Loc(p)) THEN ptl[p] ELSE -1]
  /\ UNCHANGED <<rtV, instV, recV, pst, pr, pgn, plt, pvis, led, sled, prefc, pqp, xV, net, ghV>>


\* ============================ source-release ordering / transfer-length consistency 的分支 ============================
\* source-release ordering（开关 PRel）：P 的请求在它的 x 还没停时正常结束（glue：p_post 之后立刻 release；pull：暴露之后）。
\* 源页按账本进 Drain(h)（账本里还有 x），只由 Cqe（E2，push）/ ReleaseSource（pull）放回 Free，或由 PDrainLibFail
\* （PLibFail 规则）、DrainTimeout 进隔离。不发任何消息（notice 由 Cqe 照常发）。变异 pReleaseFree：直接放源页。
PRelease(i, r) ==
  /\ PRel /\ IsP(i) /\ alive[i]
  /\ \/ ph[i][r] = "sent" /\ iv[rx[i][r]] = "posted"
     \/ ph[i][r] = "reg" /\ iv[rx[i][r]] = "reg"     \* PReg：glue 在 p_post 之后、p_begin 之前就 release（trace conformance 第 2 轮：2,453 个请求全是这个顺序）
     \/ ph[i][r] = "exp" /\ xst[rx[i][r]] = "posted"
  /\ LET p == rpg[i][r] IN
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, IF Mut = "pReleaseFree" THEN "free" ELSE GiveUpTo(p, "done"), rpe[i][r], led[p], sled[p])
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, net, ghV>>

\* source-release ordering：PLibFail 规则落到请求已结束的源页上：库对 x 返回失败或超时（不是已停证据）→ 源页进隔离，告诉 D
PDrainLibFailBroken(p) ==
  /\ PRel /\ IsP(Loc(p)) /\ alive[Loc(p)] /\ pst[p] = "drain"
  /\ \E x \in led[p] :
       /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
       /\ PageTo(p, "free", 0, {}, {})
               /\ net' = net \cup {Msg("notice", Loc(p), xd[x], xr[x], xg[x], x, xlt[x], 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, ghV>>


PDrainLibFailSafe(p) ==
  /\ PRel /\ IsP(Loc(p)) /\ alive[Loc(p)] /\ pst[p] = "drain"
  /\ \E x \in led[p] :
       /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
       /\ PageTo(p, GiveUpTo(p, "timeout"), xd[x], led[p], sled[p])
               /\ net' = net \cup {Msg("abort", Loc(p), xd[x], xr[x], xg[x], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, ghV>>


PDrainLibFail(p) == IF Mut = "failedAsDrained" THEN PDrainLibFailBroken(p) ELSE PDrainLibFailSafe(p)

\* transfer-length consistency（push，更正）：D 拿到"已停、成功，但 lt ≠ 计划"的消息（成功 notice 的 lt，或带内完成的 lt）：数据不可用（BAD_LEN）。
\* notice 只在 Cqe 之后发出（带内完成只在放置之后出现），所以它是已停证据：x 出账本；D 的记录若还在等它，以错误结束，
\* 页回 Free（sled 非空则 Drain）；记录已结束的页（Drain）账本清空即回 Free。不隔离。
\* 变异 ignoreLt：D 不做这个检查（DRecvNotice、DInband 照单全收，这个动作不使能）。
DBadLen(x) ==
  /\ Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]] /\ Mut # "ignoreLt"
  /\ pst[xdst[x]] \in {"priv", "drain"} /\ x \in led[xdst[x]]
  /\ \/ /\ PushEv = "notice"
        /\ \E m \in net : /\ m.t = "notice" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x] /\ m.ok /\ m.pg # xnt[x]
                          /\ (HOrder = "strict" /\ m.pe = 1) => hw[x] = "stop"
     \/ PushEv = "inband" /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x]
  /\ xst' = [xst EXCEPT ![x] = "failed"]
  /\ LET q == xdst[x]
         j == xd[x]
         r == xr[x]
         live == Active(j, r) /\ rg[j][r] = xg[x] /\ rx[j][r] = x
         nl == led[q] \ {x}
     IN IF live
        THEN /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][xg[x]] = Bump(@)]
             /\ net' = net \cup {Msg("reply", j, 0, r, xg[x], 0, 0, 0, FALSE)}
             /\ PageTo(q, IF nl = {} /\ sled[q] = {} /\ ~PinBlocks(q) THEN "free" ELSE "drain", 0, nl, sled[q])
        ELSE /\ EvidenceAt(q, x)
             /\ UNCHANGED <<ph, drep, net>>
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx,
                 crep, dsucc, gbad>>

\* transfer-length consistency（pull）：sinfo 里的 lt ≠ D 的计划：D 不发 READ，以错误结束，回 ReleaseSource（承诺永不读）；目的页账本空，回 Free
DSinfoBadLen(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait" /\ Mut # "ignoreLt"
  /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  /\ \E m \in net :
       /\ m.t = "sinfo" /\ m.to = j /\ m.r = r /\ m.g = rg[j][r] /\ m.x \in Xids /\ iv[m.x] = "none"
       /\ m.pe # NTok(r, rg[j][r])
       /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
       /\ net' = net \cup {Msg("relsrc", j, m.fr, r, m.g, m.x, 0, 0, FALSE), Msg("reply", j, 0, r, m.g, 0, 0, 0, FALSE)}
  /\ ph' = [ph EXCEPT ![j][r] = "end"]
  /\ PageTo(rpg[j][r], FreeOrDrain(rpg[j][r]), 0, {}, {})
  /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt,
                 hw, hok, xst, nx, crep, dsucc, gbad>>
\* ============================ P 的登记 / 提交拆开（开关 PReg） ============================
\* glue：p_post（ledger.py）登记出向条目 POSTED、源页被 pops (2, eid) 钉住；scheduler 随即 release
\* （prefill.py，P 的记录在 on_prefill_done 里就结束）；worker 的 p_begin（ledger.py、prefill.py）
\* 在调用传输库前把 POSTED → SUBMITTED，若 abort / 对端失联已先把条目取消（CANCELLED）就返回 False、不调传输库。
\* PSubmit(x) = p_begin 返回 True：只有从这里起 WRITE 才可能在途。变异 noticeBeforeCompletion 在 PReg 下在这里发 notice。
PSubmit(x) ==
  /\ PReg /\ xk[x] = "wr" /\ iv[x] = "reg" /\ alive[xp[x]]
  /\ iv' = [iv EXCEPT ![x] = "posted"]
  /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"] /\ hok' = [hok EXCEPT ![x] = FALSE]
  /\ LET i == xp[x]
         r == xr[x]
     IN ph' = IF ph[i][r] = "reg" /\ rg[i][r] = xg[x] /\ rx[i][r] = x THEN [ph EXCEPT ![i][r] = "sent"] ELSE ph
  /\ net' = IF Mut = "noticeBeforeCompletion"
            THEN net \cup {Msg("notice", xp[x], xd[x], xr[x], xg[x], x, xlt[x], 0, TRUE)} ELSE net
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>

\* 登记了、还没提交的条目被取消（p_abort 遇到 POSTED → CANCELLED + ACK，ledger.py；对端失联 peer_lost / p_begin
\* 里 peer 已不在，ledger.py）：停证据是"从未提交"（P 自己的队列，同 D 侧的 nopost / E3′）。x 出源页账本，
\* 给 D 回 nopost（= ABORT_ACK）；P 的记录若还活着就以错误结束。变异 cancelSubmitted：已提交（WRITE 可能在途）的也这样放
PCancelReg(x) ==
  /\ PReg /\ xk[x] = "wr" /\ alive[xp[x]]
  /\ iv[x] = "reg" \/ (Mut = "cancelSubmitted" /\ iv[x] = "posted")
  /\ \/ \E m \in net : m.t = "revoke" /\ m.x = x /\ m.to = xp[x]
     \/ TOk(xd[x])
  /\ iv' = [iv EXCEPT ![x] = "nopost"]
  /\ net' = net \cup {Msg("nopost", xp[x], xd[x], xr[x], xg[x], x, 0, 0, FALSE)}
  /\ LET p == xsrc[x]
         i == xp[x]
         r == xr[x]
         live == ph[i][r] \in {"reg", "sent"} /\ rg[i][r] = xg[x] /\ rx[i][r] = x
         nl == led[p] \ {x}
     IN IF live
        THEN /\ ph' = [ph EXCEPT ![i][r] = "end"]
             /\ PageTo(p, IF nl = {} /\ sled[p] = {} /\ ~PinBlocks(p) THEN "free" ELSE "drain", 0, nl, sled[p])
        ELSE /\ EvidenceAt(p, x)
             /\ UNCHANGED ph
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* ============================ decode growth and cancellation：D 解码时加页（①） ============================
\* glue：每个跨页的 decode 步在发射之前（Scheduler._prepare_batch，scheduler/scheduler.py）调
\* LedgerCacheManager.allocate_paged（disagg/scheduler_pd.py）→ ledger.alloc(gen, last_page - first_page)；overlap 循环里
\* 这时上一步还在 GPU 上跑（overlap_loop 先 _schedule_next_batch 再 _process_last_data，scheduler.py）。
\* 核心：alloc_en = 主人 R_LIVE ∧ d_alloc_ok（D：还没暴露，或 x 已 X_VISIBLE；local.rs alloc_en / d_alloc_ok；
\* 也就是：记录在 run，所以 x VISIBLE、主人 LIVE）。"还没暴露"那一支是 DRecvReq 的前半；暴露之后的这一支在 PdCore
\* 里 = 记录已提交：run / ovl（DLanded / DReadDone 之后、flush 过；命中的记录没有 x，同样在 run / ovl）。核心不分 run 和 ovl
\* （没有 decode op 标签），所以 ovl 也加页。一次取一组空页（核心的 got），都成 Priv(r, g)：写进度 0（还没有步写过），
\* 不暴露、不进 RDMA / 本地流账本（空页的账本本来就空，K7）。
\* 变异 growNoRun：记录还没提交（wait / rd）也加页；growNonFree：取的页可以不是空页（不是本记录自己的页就行）
DGrow(j, r) ==
  /\ IsD(j) /\ alive[j]
  /\ IF Mut = "growNoRun" THEN Active(j, r) ELSE ph[j][r] \in {"run", "ovl"}
  /\ \E Q \in SUBSET Pages :
       /\ Q # {}
       /\ \A q \in Q : /\ Loc(q) = j /\ q # rpg[j][r] /\ ~(pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = rg[j][r])
                       /\ pst[q] = "free" \/ Mut = "growNonFree"
       /\ pst' = [p \in Pages |-> IF p \in Q THEN "priv" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in Q THEN r ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in Q THEN rg[j][r] ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in Q THEN 0 ELSE plt[p]]
       /\ ptl' = [p \in Pages |-> IF p \in Q THEN 0 ELSE ptl[p]]
       /\ pvis' = [p \in Pages |-> IF p \in Q THEN FALSE ELSE pvis[p]]
  /\ UNCHANGED <<rtV, instV, recV, led, sfly, sled, prefc, pqp, xV, net, ghV>>

\* ============================ KernelReadPins：kernel 读（发射核对、一个步一条钉、步完成） ============================
\* 核心的发射核对：实例 i 上第 r 行这一步能读吗（只看核心自己的状态；对应 glue ledger.py 的 launch，KernelReadPins ② 挪进核心）
\*   D 非命中：记录已提交（run / ovl：落地证据之后、DStartRun 里 flush 之后），页是 Priv(r, g)、RDMA 账本空、lt = 计划；
\*   D 命中：映射的共享页（已封存 = 整页落地）；
\*   P：自己这一代的 prefill 写已 E1（PPoll 之后：ready / reg / sent / exp），页是 Priv(r, g)。B2 再加 P 侧共享前缀页。
KRowOK(i, r) ==
  LET g == rg[i][r]
      p == rpg[i][r]
      x == rx[i][r]
  IN /\ Active(i, r) /\ p \in Pages
     /\ IF IsD(i)
        THEN \/ ph[i][r] \in {"run", "ovl"} /\ rhit[i][r] /\ pst[p] = "shared"
             \/ /\ ph[i][r] \in {"run", "ovl"} /\ ~rhit[i][r]
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g /\ led[p] = {} /\ plt[p] = NTok(r, g)
             \/ /\ Mut = "kLaunchUnflushed" /\ ph[i][r] \in {"wait", "rd"} /\ x \in Xids   \* 落地证据已到、还没 flush
                /\ IF Mode = "push" THEN xst[x] = "landed" ELSE (iv[x] = "cqe" /\ hok[x])
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g
             \/ /\ Mut = "kLaunchUnlanded" /\ ph[i][r] \in {"wait", "rd"}                 \* x 还没停
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g
        ELSE \/ /\ ph[i][r] \in {"ready", "reg", "sent", "exp"}
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g /\ Tag(r, g) \notin sled[p]
             \/ /\ Mut = "kLaunchUnlanded" /\ ph[i][r] = "pre"                          \* prefill 写还没 E1
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g
\* 读集合的一个元素：核心按 h = (r, g) 算出的页（indices / indptr / last_page_len 由核心算，glue 只拷贝）
\* @type: (Int, Int) => <<Int, Int, Int, Int>>;
KEnt(i, r) == <<r, rg[i][r], rpg[i][r], IF rhit[i][r] THEN 1 ELSE 0>>

\* decode growth and cancellation（DGrow）：一行的读集合 = 这一代在本实例上的全部页（同核心 launch 的 rlp = 这一代的页数）：记录映射的那一页（KEnt），
\*   加上每一页加页。加页的元素按发射前的写进度分两种（第 4 项 sh）：2 = 读它（之前已有步写过：plt >= 1，核心的
\*   rd <= max(rwr, rla)）；3 = 这一步不读它（还没有步写过：这一步写它，或不碰它）。变异 kReadUnwritten：没人写过的也按 2 读
GrownRows(i, rows) == {q \in Pages : IsD(i) /\ Loc(q) = i /\ pst[q] = "priv" /\ \E r \in rows : pr[q] = r /\ pgn[q] = rg[i][r] /\ q # rpg[i][r]}
\* @type: Int => <<Int, Int, Int, Int>>;
KGEnt(q) == <<pr[q], pgn[q], q, IF plt[q] >= 1 \/ Mut = "kReadUnwritten" THEN 2 ELSE 3>>

\* 发射一步（rows 非空）：核对每一行，记下读集合，钉住（kpin），GPU 开始读（kfly）。调度器选哪些行是不可信策略（全称）。
\* decode growth and cancellation：这一步把还没有步写过的加页中的一部分 W（store 的写区间 [rd, wr) 覆盖到的；调度器定，全称）写下：记 plt = 1（核心
\*   rla）；真值 ptl = 1 也在发射时记：A9 流内 FIFO，之后在本实例发射的任何一步开始读时这一步的 store 已完成，这一步自己的
\*   attention 在自己的 store 之后读。变异 kGrowNoFifo：写在这一步 KLand 时才落下；kReadUnwritten：不写
KLaunch(i, s, rows) ==
  /\ alive[i] /\ ~kpin[i][s] /\ ~kfly[i][s]
  /\ rows # {} /\ \A r \in rows : KRowOK(i, r) /\ (IF B2 /\ IsP(i) THEN SRowReady(i, r) ELSE TRUE)
  /\ kpin' = [kpin EXCEPT ![i][s] = TRUE] /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
  /\ LET GR == GrownRows(i, rows) IN
       /\ krs' = [krs EXCEPT ![i][s] = {KEnt(i, r) : r \in rows} \cup {KGEnt(q) : q \in GR} \cup SRows(i, rows)]
       /\ \E W \in SUBSET {q \in GR : plt[q] = 0} :
            /\ Mut = "kReadUnwritten" => W = {}
            /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
            /\ ptl' = [p \in Pages |-> IF p \in W /\ Mut # "kGrowNoFifo" THEN 1 ELSE ptl[p]]
  /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>

\* 变异 kWrongGen：核对按 room 找页（pr = r），不核代；读集合记的是这一行现在的代
KLaunchWG(i, s, r, p) ==
  /\ Mut = "kWrongGen" /\ alive[i] /\ ~kpin[i][s] /\ ~kfly[i][s]
  /\ Active(i, r) /\ ~rhit[i][r] /\ ph[i][r] \in (IF IsD(i) THEN {"run", "ovl"} ELSE {"ready", "reg", "sent", "exp"})
  /\ Loc(p) = i /\ pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = r
  /\ ~(pst[p] = "priv" /\ pgn[p] = rg[i][r] /\ p # rpg[i][r])   \* decode growth and cancellation：这一代自己的加页不在这个变异的选择里（由 KLaunch 按 sh 2 / 3 读）
  /\ IF IsD(i) THEN led[p] = {} /\ plt[p] = NTok(r, pgn[p]) ELSE sled[p] = {}
  /\ kpin' = [kpin EXCEPT ![i][s] = TRUE] /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
  /\ krs' = [krs EXCEPT ![i][s] = {<<r, rg[i][r], p, 0>>}]
  /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pgV, xV, net, ghV>>

\* 环境（A8）：GPU 做完这一步（挂住的实例的 GPU 照样做完）。读集合只在钉也已去掉时清空（变异 kDoneEarly 之后）
KLand(i, s) ==
  /\ kfly[i][s]
  /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  /\ krs' = IF kpin[i][s] THEN krs ELSE [krs EXCEPT ![i][s] = {}]
  \* 变异 kGrowNoFifo：这一步写的加页（sh = 3、已记 plt = 1）在 GPU 做完时才落下（设计里发射时已落下：A9）
  /\ ptl' = IF Mut = "kGrowNoFifo"
            THEN [p \in Pages |-> IF \E e \in krs[i][s] : /\ e[3] = p /\ e[4] = 3 /\ plt[p] = 1
                                                          /\ pst[p] \in {"priv", "drain"} /\ pr[p] = e[1] /\ pgn[p] = e[2]
                                  THEN 1 ELSE ptl[p]]
            ELSE ptl
  /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, recV, pst, pr, pgn, plt, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>

\* 这一步的事件查询为真（E1，= core step_done(step)）：去钉；读集合里账本已空、不再被别的步钉住的 Drain 页原子回 Free
\* （= glue complete → _try_free）。变异 kDoneEarly：不等事件；kDoneNeedsNext：要另有一步已发射才处理
KDone(i, s) ==
  /\ alive[i] /\ kpin[i][s] /\ (~kfly[i][s] \/ Mut = "kDoneEarly")
  /\ Mut = "kDoneNeedsNext" => \E s2 \in KSlots : s2 # s /\ kpin[i][s2]
  /\ LET kp2 == [kpin EXCEPT ![i][s] = FALSE]
         RS == {e[3] : e \in krs[i][s]}
         Pin2(p) == \E s2 \in KSlots : kp2[i][s2] /\ \E e \in krs[i][s2] : e[3] = p
         Fr(p) == p \in RS /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ ~(Pin2(p) /\ Mut # "kFreeUnderRead")
     IN /\ kpin' = kp2
        /\ krs' = IF kfly[i][s] THEN krs ELSE [krs EXCEPT ![i][s] = {}]
        /\ pst' = [p \in Pages |-> IF Fr(p) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE pqp[p]]
  /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>

\* ================= B2 joint prefix actions =================
PHit(i, r, p) ==
  /\ B2 /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ ~schoice[i][r]
  /\ Loc(p) = i /\ spst[p] = "shared" /\ skey[p] = STok(r, rg[i][r])
  /\ smap' = [smap EXCEPT ![i][r] = p] /\ schoice' = [schoice EXCEPT ![i][r] = TRUE]
  /\ rpgS' = rpgS \cup {SH(i,r,rg[i][r],p)}
  /\ sprefc' = [sprefc EXCEPT ![p] = @ + (IF Mut = "hitNoRef" THEN 0 ELSE 1)]
  /\ hitSeen' = TRUE
  /\ UNCHANGED <<basevars, spst,sown,sgen,skey,swrite,sdata,sready,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,dedupSeen>>
PNoPrefix(i,r) ==
  /\ B2 /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ ~schoice[i][r]
  /\ schoice' = [schoice EXCEPT ![i][r] = TRUE]
  /\ UNCHANGED <<basevars, spst,sown,sgen,skey,swrite,sdata,sready,sprefc,smap,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
PAllocPrefix(i,r,p) ==
  /\ B2 /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ ~schoice[i][r]
  /\ Loc(p) = i /\ spst[p] = "free"
  /\ smap' = [smap EXCEPT ![i][r] = p] /\ schoice' = [schoice EXCEPT ![i][r] = TRUE]
  /\ spst' = [spst EXCEPT ![p] = "priv"] /\ sown' = [sown EXCEPT ![p] = r] /\ sgen' = [sgen EXCEPT ![p] = rg[i][r]]
  /\ skey' = [skey EXCEPT ![p] = STok(r,rg[i][r])]
  /\ swrite' = [swrite EXCEPT ![p] = TRUE] /\ sdata' = [sdata EXCEPT ![p] = FALSE] /\ sready' = [sready EXCEPT ![p] = FALSE]
  /\ UNCHANGED <<basevars,sprefc,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
SPrefixLand(p) ==
  /\ B2 /\ swrite[p]
  /\ swrite' = [swrite EXCEPT ![p] = FALSE]
  /\ sdata' = [sdata EXCEPT ![p] = spst[p] \in {"priv","drain","quar"}]
  /\ UNCHANGED <<basevars,spst,sown,sgen,skey,sready,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
SPrefixPoll(p) ==
  /\ B2 /\ alive[Loc(p)] /\ ~swrite[p] /\ ~sready[p] /\ spst[p] \in {"priv","drain"}
  /\ sready' = [sready EXCEPT ![p] = TRUE]
  /\ spst' = [spst EXCEPT ![p] = IF @ = "drain" /\ ~SPin(p) /\ ~(\E x \in sentry : p \in xsrcP[x]) THEN "free" ELSE @]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
PSeal(i,r) ==
  /\ B2 /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ schoice[i][r]
  /\ LET p == smap[i][r] IN
       /\ p \in SPages /\ spst[p] = "priv" /\ (sready[p] \/ Mut = "sealUnwritten")
       /\ spst' = [spst EXCEPT ![p] = "shared"]
       /\ rpgS' = rpgS \cup {SH(i,r,rg[i][r],p)}
       /\ sprefc' = [sprefc EXCEPT ![p] = @ + 1]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,smap,schoice,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
PDedup(i,r,q) ==
  /\ B2 /\ alive[i] /\ schoice[i][r]
  /\ ph[i][r] \in {"pre","ready"} \/ (Mut = "postBeforeDedup" /\ ph[i][r] \in {"reg","sent"})
  /\ LET p == smap[i][r] IN
       /\ p \in SPages /\ spst[p] = "priv" /\ sready[p]
       /\ Loc(q) = i /\ spst[q] = "shared" /\ skey[q] = skey[p]
       /\ smap' = IF Mut = "dedupNoRemap" THEN smap ELSE [smap EXCEPT ![i][r] = q]
       /\ spst' = [spst EXCEPT ![p] = IF SPin(p) THEN "dup" ELSE "free"]
       /\ rpgS' = rpgS \cup {SH(i,r,rg[i][r],q)}
       /\ sprefc' = [sprefc EXCEPT ![q] = @ + 1]
  /\ dedupSeen' = TRUE
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,schoice,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen>>
SEvict(p) ==
  /\ B2 /\ spst[p] = "shared" /\ sprefc[p] = 0 /\ alive[Loc(p)]
  /\ spst' = [spst EXCEPT ![p] = "free"]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
\* Destructive cache reset has the same guard as repeated evict. Mutant drops entry and quarantine holders.
FlushAll(i) ==
  /\ B2 /\ alive[i]
  /\ \E p \in SPages : Loc(p)=i /\ spst[p]="shared"
  /\ \A p \in SPages : (Loc(p)=i /\ spst[p]="shared") =>
       IF Mut="flushIgnoresEntries" THEN SRefR(rpgS,p)=0 ELSE sprefc[p]=0
  /\ spst' = [p \in SPages |-> IF Loc(p)=i /\ spst[p]="shared" THEN "free" ELSE spst[p]]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
SBadUnref(i,r,p) ==
  /\ B2 /\ alive[i] /\ spst[p]="shared" /\ Loc(p)=i
  /\ \/ Mut="doubleRelease" /\ ph[i][r]="end" /\ smap[i][r]=p /\ SH(i,r,rg[i][r],p) \notin rpgS
     \/ Mut="unrefWrongHolder" /\ Active(i,r) /\ schoice[i][r] /\ smap[i][r]=0 /\ sprefc[p]>0
  /\ sprefc' = [sprefc EXCEPT ![p]=@-1]
  /\ UNCHANGED <<basevars,spst,sown,sgen,skey,swrite,sdata,sready,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
\* Every base transition has this simultaneous extension. Counts change by holder deltas,
\* rather than being overwritten with the desired invariant.
SFollow == IF ~B2 THEN UNCHANGED sV ELSE
  LET New(i,r) == rg'[i][r] # rg[i][r]
      \* @type: <<Int, Int, Int, Int>> => Bool;
      HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]
      \* @type: <<Int, Int, Int, Int>> => Bool;
      HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}
      \* @type: Int => Set(<<Int, Int, Int, Int>>);
      H2(unused) == {h \in rpgS : HLive(h) \/ (HPin(h) /\ Mut # "unrefBeforeKDone")}
      Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0
      Src(x) == IF Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0
      \* @type: Int => Int -> Set(Int);
      SX(unused) == [x \in Xids |-> IF Posted(x) THEN (IF Src(x) \in SPages /\ spst[Src(x)]="shared" THEN {Src(x)} ELSE {}) ELSE xsrcS[x]]
      \* @type: Int => Int -> Set(Int);
      PX(unused) == [x \in Xids |-> IF Posted(x) THEN (IF Src(x) \in SPages /\ spst[Src(x)]="priv" THEN {Src(x)} ELSE {}) ELSE xsrcP[x]]
      Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}
      Quarantine(x) == x \in sentry /\ ~Close(x) /\
          ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))
      \* @type: Int => Set(Int);
      E2(unused) == (sentry \cup {x \in Xids : Posted(x)}) \ {x \in Xids : Close(x) \/ Quarantine(x)}
      \* @type: Int => Set(<<Int, Int>>);
      Q2(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                        UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : Quarantine(x)}})
      Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
         (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")
      Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
      Drop(p) == (Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~Pin2(p) /\ sready[p] /\ ~(\E x \in E2(0) : p \in PX(0)[x])
      Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
         spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])
  IN /\ rpgS'=H2(0) /\ xsrcS'=SX(0) /\ xsrcP'=PX(0) /\ sentry'=E2(0) /\ squar'=Q2(0)
     /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(H2(0),p)-SRefR(rpgS,p)
                         +SRefE(E2(0),SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(Q2(0),p)-SRefQ(squar,p)]
     /\ smap'=[i \in PInst |-> [r \in Rq |-> IF New(i,r) THEN 0 ELSE smap[i][r]]]
     /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF New(i,r) THEN FALSE ELSE schoice[i][r]]]
     /\ spst'=[p \in SPages |-> IF \E x \in Xids : Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                         ELSE IF Drop(p) THEN "free" ELSE IF Ended(p) THEN "drain" ELSE spst[p]]
     /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN Valid(x) ELSE xprefixOK[x]]
     /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                         THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                               (IF hw[x]="issued" THEN xprefixOK[x] ELSE Valid(x))
                         ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
     /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
SNext ==
  \/ \E i \in PInst,r \in Rq : PNoPrefix(i,r) \/ PSeal(i,r) \/
       (\E p \in SPages : PHit(i,r,p) \/ PAllocPrefix(i,r,p) \/ PDedup(i,r,p) \/ SBadUnref(i,r,p))
  \/ \E p \in SPages : SPrefixLand(p) \/ SPrefixPoll(p) \/ SEvict(p)
  \/ \E i \in PInst : FlushAll(i)
Evict(p) == LegacyEvict(p)

\* 合法终态：路由器没有在等的请求、代用完、活实例上没有活记录、没有在途 op（KernelReadPins：没有在跑的步、活实例上没有钉；
\* PReg：没有登记了还没提交的条目）
Done ==
  /\ \A r \in Rq : rt[r] # "wait" /\ gen[r] = MG
  /\ \A i \in Inst, r \in Rq : alive[i] => ~Active(i, r)
  /\ \A x \in Xids : hw[x] \notin {"fly", "issued"} /\ iv[x] # "reg"
  /\ \A i \in Inst, s \in KSlots : ~kfly[i][s] /\ (alive[i] => ~kpin[i][s])
  /\ UNCHANGED basevars

BaseNext ==
  \/ \E r \in Rq : \/ \E i \in PInst, j \in DInst : Arrive(r, i, j)
                   \/ RTimeout(r) \/ RRecvReply(r)
  \/ \E i \in Inst, r \in Rq :
       \/ PRecvReq(i, r) \/ PPoll(i, r) \/ PPost(i, r) \/ PSentDone(i, r) \/ PSentFail(i, r)
       \/ PExpose(i, r) \/ PExpDone(i, r) \/ PAbort(i, r) \/ PTimeout(i, r)
       \/ DRecvReq(i, r) \/ DLanded(i, r) \/ DXferFailed(i, r) \/ DRecvSinfo(i, r) \/ DReadDone(i, r)
       \/ DReadFail(i, r) \/ DFinish(i, r) \/ DAbort(i, r) \/ DTimeout(i, r)
       \/ PRelease(i, r) \/ DSinfoBadLen(i, r) \/ DLaunchNext(i, r) \/ DFinishOvl(i, r) \/ DGrow(i, r)
  \/ \E i \in Inst : PNoPost(i) \/ DRelUnneeded(i) \/ Hang(i) \/ Resume(i) \/ RecvHello(i)
  \/ \E j, i \in Inst : Teardown(j, i)
  \/ \E x \in Xids : Cqe(x) \/ DInband(x) \/ DRecvNotice(x) \/ DRecvNopost(x) \/ XRecvRel(x)
                     \/ HwIssue(x) \/ HwStop(x) \/ LibFailRet(x) \/ DBadLen(x) \/ PSubmit(x) \/ PCancelReg(x)
  \/ \E p \in Pages : PagePoll(p) \/ DrainTimeout(p) \/ DrainDone(p) \/ Evict(p) \/ StreamLand(p) \/ Unquarantine(p)
                      \/ PDrainLibFail(p)
  \/ \E i \in Inst, s \in KSlots : \/ \E rows \in SUBSET Rq : KLaunch(i, s, rows)
                                   \/ KLand(i, s) \/ KDone(i, s)
                                   \/ \E r \in Rq, p \in Pages : KLaunchWG(i, s, r, p)
  \/ Done

Init == BaseInit /\ SInit
Next == (BaseNext /\ SFollow) \/ SNext

Spec == Init /\ [][Next]_vars

\* 活性用的公平性：协议动作、消息送达（不丢）、硬件进展、本地流都弱公平；Arrive 不要求（客户端可以不再来）
Fair ==
  /\ \A r \in Rq : WF_vars(RTimeout(r) /\ SFollow) /\ WF_vars(RRecvReply(r) /\ SFollow)
  /\ \A i \in Inst, r \in Rq :
       /\ WF_vars(PRecvReq(i, r) /\ SFollow) /\ WF_vars(PPoll(i, r) /\ SFollow) /\ WF_vars(PPost(i, r) /\ SFollow) /\ WF_vars(PSentDone(i, r) /\ SFollow)
       /\ WF_vars(PSentFail(i, r) /\ SFollow) /\ WF_vars(PExpose(i, r) /\ SFollow) /\ WF_vars(PExpDone(i, r) /\ SFollow) /\ WF_vars(PAbort(i, r) /\ SFollow)
       /\ WF_vars(PTimeout(i, r) /\ SFollow) /\ WF_vars(DRecvReq(i, r) /\ SFollow) /\ WF_vars(DLanded(i, r) /\ SFollow) /\ WF_vars(DXferFailed(i, r) /\ SFollow)
       /\ WF_vars(DRecvSinfo(i, r) /\ SFollow) /\ WF_vars(DReadDone(i, r) /\ SFollow) /\ WF_vars(DReadFail(i, r) /\ SFollow) /\ WF_vars(DFinish(i, r) /\ SFollow)
       /\ WF_vars(DAbort(i, r) /\ SFollow) /\ WF_vars(DTimeout(i, r) /\ SFollow) /\ WF_vars(PRelease(i, r) /\ SFollow) /\ WF_vars(DSinfoBadLen(i, r) /\ SFollow)
       /\ WF_vars(DLaunchNext(i, r) /\ SFollow) /\ WF_vars(DFinishOvl(i, r) /\ SFollow)
  /\ \A i \in Inst : WF_vars(PNoPost(i) /\ SFollow) /\ WF_vars(DRelUnneeded(i) /\ SFollow)
  /\ \A x \in Xids : WF_vars(Cqe(x) /\ SFollow) /\ WF_vars(DInband(x) /\ SFollow) /\ WF_vars(DRecvNotice(x) /\ SFollow) /\ WF_vars(DRecvNopost(x) /\ SFollow)
                     /\ WF_vars(XRecvRel(x) /\ SFollow) /\ WF_vars(HwStop(x) /\ SFollow) /\ WF_vars(DBadLen(x) /\ SFollow)
  /\ \A p \in Pages : WF_vars(PagePoll(p) /\ SFollow) /\ WF_vars(DrainTimeout(p) /\ SFollow) /\ WF_vars(DrainDone(p) /\ SFollow) /\ WF_vars(StreamLand(p) /\ SFollow)
                      /\ WF_vars(PDrainLibFail(p) /\ SFollow)
  \* PReg：worker 最终处理登记的条目；KernelReadPins：GPU 最终做完一步（A8），核心最终收这一步的完成。KLaunch 不要求（调度器可以不再发射）
  /\ \A x \in Xids : WF_vars(PSubmit(x) /\ SFollow) /\ WF_vars(PCancelReg(x) /\ SFollow)
  /\ \A i \in Inst, s \in KSlots : WF_vars(KLand(i, s) /\ SFollow) /\ WF_vars(KDone(i, s) /\ SFollow)
LSpec == Spec /\ Fair

\* ============================ 类型 ============================
PhSet == {"none", "pre", "ready", "reg", "sent", "exp", "end", "wait", "rd", "run", "ovl"}
MsgT == {"req", "dinfo", "sinfo", "notice", "nopost", "revoke", "relsrc", "abort", "reply", "hello"}
BaseTypeOK ==
  /\ gen \in [Rq -> 0..MG] /\ rt \in [Rq -> {"idle", "wait", "ok", "err"}]
  /\ rp \in [Rq -> {0} \cup Inst] /\ rd \in [Rq -> {0} \cup Inst]
  /\ hp \in [Rq -> [Gens -> {0} \cup Inst]] /\ hd \in [Rq -> [Gens -> {0} \cup Inst]]
  /\ alive \in [Inst -> BOOLEAN] /\ nfail \in 0..MaxFail /\ torn \in [Inst -> SUBSET Inst]
  /\ kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ kfly \in [Inst -> [KSlots -> BOOLEAN]]
  /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]   \* decode growth and cancellation：sh 2 / 3 = 加页
  /\ ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]
  /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ rpe \in [Inst -> [Rq -> {0} \cup Inst]]
  /\ rx \in [Inst -> [Rq -> 0..MX]] /\ rhit \in [Inst -> [Rq -> BOOLEAN]]
  /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
  /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG] /\ plt \in [Pages -> 0..PS] /\ ptl \in [Pages -> -1..PS]
  /\ pvis \in [Pages -> BOOLEAN]
  /\ led \in [Pages -> SUBSET Xids]
  /\ sfly \in [Pages -> SUBSET (Rq \X Gens)] /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
  /\ prefc \in [Pages -> 0..NR] /\ pqp \in [Pages -> {0} \cup Inst]
  /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG] /\ xk \in [Xids -> {"none", "wr", "rd"}]
  /\ xp \in [Xids -> {0} \cup Inst] /\ xd \in [Xids -> {0} \cup Inst]
  /\ xsrc \in [Xids -> 0..NP] /\ xdst \in [Xids -> 0..NP] /\ xnt \in [Xids -> 0..PS]
  /\ hw \in [Xids -> {"none", "fly", "issued", "stop"}] /\ hok \in [Xids -> BOOLEAN]
  /\ iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
  /\ xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}] /\ xlt \in [Xids -> 0..PS]
  /\ nx \in 1..(MX + 1)
  /\ \A m \in net : m.t \in MsgT
  /\ drep \in [Rq -> [Gens -> 0..2]] /\ crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
  /\ dsucc \in [Rq -> [Gens -> BOOLEAN]] /\ gbad \in BOOLEAN

\* ============================ 性质（S2 候选） ============================
Writing(x) == InFl(x)
NoWriteInto(p) == \A x \in Xids : Writing(x) => xdst[x] # p

\* NoStrayAccess：在途的写（目的页）、在途的读（源页）、本地流 op，碰到的页都还为它持有
\*   （没离开它这一代的 Private / Draining / Quarantined 去 Free 或交给新主人）；共享页只被 D 的 decode 读
\* KernelReadPins：读集合的一个元素 e = <<r, g, p, sh>> 的页仍为它持有：私有读 = 页仍属 (r, g)（priv / drain / quar，或由它封存成的
\*   shared：封存不改 pr、pgn，只读），共享读 = 页仍是共享页（没被淘汰）。回 Free 会清掉 pr、pgn，换主人会改它们
\* @type: <<Int, Int, Int, Int>> => Bool;
KHeld(e) == LET p == e[3] IN
  IF p \in SPages THEN SHeld(e) ELSE IF e[4] = 1 THEN pst[p] = "shared"
  ELSE pst[p] \in {"priv", "drain", "quar", "shared"} /\ pr[p] = e[1] /\ pgn[p] = e[2]

NoStrayAccess ==
  /\ \A x \in Xids : Writing(x) => Held(xdst[x], x)
  /\ \A x \in Xids : hw[x] = "fly" => Held(xsrc[x], x)
  /\ \A p \in Pages : \A t \in sfly[p] :
        \/ pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
        \/ pst[p] = "shared" /\ IsD(Loc(p))
  \* KernelReadPins（真值层）：GPU 还在跑的步读的页仍为读集合里的行持有
  /\ \A i \in Inst, s \in KSlots : kfly[i][s] => \A e \in krs[i][s] : KHeld(e)

\* KernelReadPins NoFreeUnderRead（账本层）：已发射、还没 KDone 的步，读集合里的页一直归钉住它的那一代（pr、pgn 不变），不回 Free、
\*   不重新分配、不解除隔离、共享页不被淘汰。Priv → Drain / Quar 允许（overlap 调度器在读它的 k+1 步还在途时就 release 请求，
\*   与核心的读法相同）；Priv → Shared 封存（只读、pr / pgn 不变）在本模型里也允许（见 W_KSealPinned）。
\*   "钉住期间没有写进来"不在这条里：RDMA 写由 MC_pd_ind 的 K15（被钉 ⇒ KData，含 NoWriteInto）归纳证、TLC 由 KReadIntegrity
\*   在 GPU 读的期间查；别的代的本地流 op 由 NoStrayAccess 的 sfly 一项排除；本行自己的 decode / store 写（位置 ≥ read_upto）
\*   不按 token 建，允许
NoFreeUnderRead == \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] : KHeld(e)

\* KernelReadPins KReadIntegrity（真值层）：GPU 还在读的每一格都是本行这一代已落地且可见的私有页（D：计划的 NTok 个 token 已落地、
\*   pvis；P：核心记下的 lt = 真落地的数、本页没有本地写在途），或整页落地的共享页；读时没有 RDMA 写在途
\* @type: (Int, <<Int, Int, Int, Int>>) => Bool;
\* decode growth and cancellation（DGrow）：加页的元素：sh = 2（读）= 本行这一代之前某一步写下的 KV 已落下（ptl >= 1；0 = 还没人写过，页里是上一个
\*   主人的字节；-1 = 被别人写过）；sh = 3（这一步不读）只要求没有 RDMA 写在途
KData(i, e) == LET p == e[3] IN
  /\ NoWriteInto(p)
  /\ IF p \in SPages THEN SData(e) ELSE IF e[4] = 1 THEN ptl[p] = PS
     ELSE IF e[4] = 2 THEN ptl[p] >= 1
     ELSE IF e[4] = 3 THEN TRUE
     ELSE IF IsD(i) THEN ptl[p] = NTok(e[1], e[2]) /\ pvis[p]
     ELSE ptl[p] = plt[p] /\ sfly[p] = {}
BaseKReadIntegrity == \A i \in Inst, s \in KSlots : kfly[i][s] => \A e \in krs[i][s] : Loc(e[3]) = i /\ KHeld(e) /\ KData(i, e)

\* ReadOwnLanded：D 的 decode 只读自己这一代已落地、且对 kernel 可见（H-visible）的私有页（全部 Len 个 token），
\*   或已整页落地的共享页；读时没有写在途
BaseReadOwnLanded ==
  \A j \in DInst, r \in Rq : ph[j][r] \in {"run", "ovl"} =>
    LET q == rpg[j][r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = rg[j][r] /\ ptl[q] = NTok(r, rg[j][r]) /\ pvis[q]
         \/ rhit[j][r] /\ pst[q] = "shared" /\ ptl[q] = PS

\* SendOwnLanded（源侧）：网卡读源页时，源页上这一代的数据已落地、没有本地写在途（sglang#41395 类）
BaseSendOwnLanded == \A x \in Xids : hw[x] = "fly" => (ptl[xsrc[x]] = xlt[x] /\ sfly[xsrc[x]] = {})   \* transfer-length consistency：比的是 x 声称带的 lt（BadLen 关时 = 计划）

\* SealOnlyLanded：共享页整页已落地（page_size > 1 时只有写满的页），且没有写在途
BaseSealOnlyLanded == \A p \in Pages : pst[p] = "shared" => (ptl[p] = PS /\ NoWriteInto(p))

\* GenFiltered：代际不符的消息一律丢弃（幽灵 gbad 记"曾被采用"）
GenFiltered == ~gbad

\* OneReply：每个 (r, g) 至多一个终态回复（D 发出的、客户端收到的）
OneReply == \A r \in Rq, g \in Gens : drep[r][g] <= 1 /\ crep[r][g] # "two"

\* ReplyTruth：客户端收到成功 ⇒ D 真的读着这一代落地的页做完了
ReplyTruth == \A r \in Rq, g \in Gens : crep[r][g] = "ok" => dsucc[r][g]

\* QuarNeverMapped：隔离页不被任何活记录映射
QuarNeverMapped == \A i \in Inst, r \in Rq : (Active(i, r) /\ rpg[i][r] \in Pages) => pst[rpg[i][r]] # "quar"

\* QuarSticky（第一步兜底）：隔离页在进程生命期内不离开隔离（动作性质）
QuarSticky == [][\A p \in Pages : (pst[p] = "quar" /\ ~Unquar) => pst'[p] = "quar"]_vars

\* 静止时页守恒：没有活记录、非隔离页的账本都空 ⇒ 非隔离页要么 Free，要么是 refc = 0 的 Shared
Quiet == /\ \A i \in Inst, r \in Rq : ~Active(i, r)
         /\ \A p \in Pages : pst[p] # "quar" => (led[p] = {} /\ sled[p] = {} /\ ~KPinned(p))   \* KernelReadPins：钉也是在途
BaseQuietConservation == Quiet => \A p \in Pages : pst[p] \in {"free", "quar"} \/ (pst[p] = "shared" /\ prefc[p] = 0)

\* decode growth and cancellation（PReg 超时修法）QuarNoReg：隔离的 P 页账本里没有登记态（从未交给传输库）的 x。"从未提交"是
\*   P 自己持有的停证据（PCancelReg），隔离只给拿不到停证据的页。P 页账本至多一个 x、页进隔离时账本非空，所以进隔离那一刻它等于
\*   "账本里的 x 已交给传输库"（QuarHasSubmitted 太强：正确隔离的页在迟到的 Cqe 之后账本为空）
QuarNoReg == \A p \in Pages : (IsP(Loc(p)) /\ pst[p] = "quar") => \A x \in led[p] : iv[x] # "reg"

\* ================= B2 proposed safety =================
STypeOK ==
  /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
  /\ sown \in [SPages -> 0..NR] /\ sgen \in [SPages -> 0..MG] /\ skey \in [SPages -> 0..2]
  /\ swrite \in [SPages -> BOOLEAN] /\ sdata \in [SPages -> BOOLEAN] /\ sready \in [SPages -> BOOLEAN]
  /\ sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]
  /\ smap \in [PInst -> [Rq -> {0} \cup SPages]] /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
  /\ rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
  /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
  /\ sentry \in SUBSET Xids /\ squar \in SUBSET (Xids \X SPages)
  /\ xprefixOK \in [Xids -> BOOLEAN] /\ dpreOK \in [Pages -> BOOLEAN]
  /\ hitSeen \in BOOLEAN /\ dedupSeen \in BOOLEAN
PrefcMatchesHolders == IF ~B2 THEN TRUE ELSE \A p \in SPages :
  sprefc[p] = SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
SAccess(x) == x \in sentry \/ hw[x]="fly" \/ (\E h \in squar : h[1]=x)
NoEvictUnderRDMA == IF ~B2 THEN TRUE ELSE \A x \in Xids : SAccess(x) =>
  /\ \A p \in xsrcS[x] : spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x])
  /\ \A p \in xsrcP[x] : spst[p] \in {"priv","drain","quar"} /\ sown[p]=xr[x] /\ sgen[p]=xg[x]
SharedLedRef == IF ~B2 THEN TRUE ELSE \A p \in SPages :
  /\ ((spst[p]="shared" /\ (SRefE(sentry,xsrcS,p)>0 \/ SPin(p))) \/ SRefQ(squar,p)>0) => sprefc[p]>=1
  /\ sprefc[p]>=SRefQ(squar,p)
SharedImmutable == IF ~B2 THEN TRUE ELSE \A p \in SPages : spst[p]="shared" => sready[p] /\ sdata[p] /\ ~swrite[p] /\ NoWriteInto(p)
HitIdentity == IF ~B2 THEN TRUE ELSE
  /\ \A h \in rpgS : spst[h[4]]="shared" /\ skey[h[4]]=STok(h[2],h[3])
  /\ \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages) => skey[smap[i][r]]=STok(r,rg[i][r])
SMapIntegrity == IF ~B2 THEN TRUE ELSE \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages) => spst[smap[i][r]] \in {"priv","shared"}
KReadIntegrity == BaseKReadIntegrity /\ SMapIntegrity
SendOwnLanded == BaseSendOwnLanded /\ (IF ~B2 THEN TRUE ELSE
  (\A x \in Xids : hw[x]="fly" => \A p \in xsrcS[x] \cup xsrcP[x] :
     sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])))
ReadOwnLanded == BaseReadOwnLanded /\ (B2 =>
  \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => dpreOK[rpg[j][r]])
SealOnlyLanded == BaseSealOnlyLanded /\ SharedImmutable
QuietConservation == BaseQuietConservation /\ (IF ~B2 THEN TRUE ELSE
  ((Quiet /\ sentry={} /\ \A p \in SPages : ~swrite[p] /\ (spst[p] \in {"priv","drain"} => sready[p]) /\ ~SPin(p)) =>
   \A p \in SPages : spst[p] \in {"free","quar"} \/ (spst[p]="shared" /\ sprefc[p]=SRefQ(squar,p))))
W_PHit == ~hitSeen
W_PDedup == ~dedupSeen
W_SharedQuar == squar={}
W_PSeal == ~\E p \in SPages : spst[p]="shared" /\ sown[p] # 0

W_TwoShared == ~\E p \in SPages : SRefR(rpgS,p)>=2
W_QuarHit == [][~(\E i \in PInst,r \in Rq,p \in SPages : SRefQ(squar,p)>0 /\ PHit(i,r,p))]_vars

BaseSafety == NoStrayAccess /\ ReadOwnLanded /\ SendOwnLanded /\ SealOnlyLanded /\ GenFiltered /\ OneReply
          /\ ReplyTruth /\ QuarNeverMapped /\ QuietConservation /\ NoFreeUnderRead /\ KReadIntegrity /\ QuarNoReg

Safety == BaseSafety /\ NoEvictUnderRDMA /\ SharedLedRef /\ PrefcMatchesHolders /\ SharedImmutable /\ HitIdentity
TypeOK == BaseTypeOK /\ STypeOK

\* 活性（LSpec 下）：L1 每个被接受的请求最终结束（成功或明确错误）；每个活记录最终结束
ReqEnds == \A r \in Rq : (rt[r] = "wait") ~> (rt[r] # "wait")
RecEnds == \A i \in Inst, r \in Rq : Active(i, r) ~> (~Active(i, r) \/ ~alive[i])   \* 挂住的实例自己的记录不要求
\* L2（只在没有对端故障、Faults = FALSE 的运行里）：最终所有页回到 Free 或 Shared，没有隔离
PagesBack == <>[](\A p \in Pages : pst[p] \in {"free", "shared"})
\* L2（任何运行）：Draining 的页最终离开 Draining（拿到证据回 Free，或超时进隔离）
DrainEnds == \A p \in Pages : (pst[p] = "drain") ~> (pst[p] # "drain" \/ ~alive[Loc(p)])   \* 挂住的实例自己的页不要求
\* KernelReadPins：已发射的步最终被核心收完成（去钉）；挂住的实例自己的步不要求
KStepEnds == \A i \in Inst, s \in KSlots : kpin[i][s] ~> (~kpin[i][s] \/ ~alive[i])

\* ============================ 可达性见证（应被违反） ============================
W_Success   == ~\E r \in Rq, g \in Gens : dsucc[r][g]
W_Reuse     == ~\E r \in Rq : MG >= 2 /\ dsucc[r][2]
W_ErrReply  == ~\E r \in Rq, g \in Gens : crep[r][g] = "err"
W_DrainD    == ~\E p \in Pages : IsD(Loc(p)) /\ pst[p] = "drain"
W_DrainP    == ~\E p \in Pages : IsP(Loc(p)) /\ pst[p] = "drain"
W_Quar      == ~\E p \in Pages : pst[p] = "quar"
W_QuarD     == ~\E p \in Pages : IsD(Loc(p)) /\ pst[p] = "quar"
W_QuarP     == ~\E p \in Pages : IsP(Loc(p)) /\ pst[p] = "quar"
W_PeerFailQuar == ~(nfail > 0 /\ \E p \in Pages : pst[p] = "quar" /\ pqp[p] \in Inst /\ ~alive[pqp[p]])
W_LateLand  == ~\E x \in Xids : hw[x] = "stop" /\ hok[x] /\ xdst[x] \in Pages /\ pst[xdst[x]] = "quar"
W_Shared    == ~\E p \in Pages : pst[p] = "shared"
W_Hit       == ~\E j \in DInst, r \in Rq : rhit[j][r] /\ ph[j][r] = "run"
W_Revoked   == ~\E x \in Xids : xst[x] = "revoked"
W_FailRet   == ~\E x \in Xids : iv[x] = "failret"
W_DrainFreed == [][\A p \in Pages : pst[p] = "drain" => pst'[p] # "free"]_vars
\* Unquar：隔离页真的回过 Free（动作性质，应被违反）
W_QuarLeft == [][\A p \in Pages : pst[p] = "quar" => pst'[p] = "quar"]_vars
\* source-release ordering / transfer-length consistency 的见证（动作性质，应被违反 = 这一支可达）
W_PRelease    == [][\A i \in Inst, r \in Rq : ~PRelease(i, r)]_vars
W_PDrainFreed == [][\A p \in Pages : (IsP(Loc(p)) /\ pst[p] = "drain" /\ led[p] # {}) => pst'[p] # "free"]_vars
W_PDrainLibFail == [][\A p \in Pages : ~PDrainLibFail(p)]_vars
W_BadLen      == [][\A x \in Xids : ~DBadLen(x)]_vars
W_SinfoBadLen == [][\A j \in Inst, r \in Rq : ~DSinfoBadLen(j, r)]_vars
\* source-release ordering：P 的同一槽在第一笔 x 还在途（或还暴露着）时已经绑定了更新的一代
W_PRebind     == ~\E x \in Xids : /\ xk[x] # "none" /\ xp[x] \in Inst
                                  /\ IF xk[x] = "wr" THEN InFl(x) /\ iv[x] \in {"posted", "failret"} ELSE xst[x] = "posted"
                                  /\ Active(xp[x], xr[x]) /\ rg[xp[x]][xr[x]] > xg[x]
\* overlapped-finish drain：overlap 下成功结束、页还在 Drain（下一步在跑）
W_FinishOvl   == [][\A j \in Inst, r \in Rq : ~DFinishOvl(j, r)]_vars
W_SuccDrain   == ~\E p \in Pages : IsD(Loc(p)) /\ pst[p] = "drain" /\ pr[p] \in Rq /\ pgn[p] \in Gens /\ dsucc[pr[p]][pgn[p]]
\* ¬ok notice 走隔离那一支真的发生过（这一支不改 xst）
W_NokQuar     == [][\A x \in Xids : DRecvNotice(x) => xst'[x] # "posted"]_vars
\* KernelReadPins 的见证（应被违反 = 可达）
W_KLaunchD    == ~\E i \in DInst, s \in KSlots : kpin[i][s]
W_KLaunchP    == ~\E i \in PInst, s \in KSlots : kpin[i][s]
W_KHit        == ~\E i \in DInst, s \in KSlots : kpin[i][s] /\ \E e \in krs[i][s] : e[4] = 1
W_KOverlap    == ~\E i \in Inst, s1, s2 \in KSlots : s1 # s2 /\ kpin[i][s1] /\ kpin[i][s2]
W_KPinDrain   == ~\E p \in Pages : pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ KPinned(p)   \* 记录结束时页被钉住 → Drain
W_KSealPinned == ~\E p \in Pages : pst[p] = "shared" /\ \E s \in KSlots : kpin[Loc(p)][s] /\ \E e \in krs[Loc(p)][s] : e[3] = p /\ e[4] = 0
W_KQuarPinned == ~\E p \in Pages : pst[p] = "quar" /\ KPinned(p)
W_KDoneFrees  == [][\A i \in Inst, s \in KSlots : KDone(i, s) => \A p \in Pages : ~(pst[p] = "drain" /\ pst'[p] = "free")]_vars
\* PReg 的见证：登记态 release（glue 的真实顺序）、release 之后才提交、提交前取消
W_PRegRelease == [][\A i \in Inst, r \in Rq : ph[i][r] = "reg" => ~PRelease(i, r)]_vars
W_PSubmitLate == [][\A x \in Xids : (PSubmit(x) /\ rg[xp[x]][xr[x]] = xg[x]) => ph[xp[x]][xr[x]] = "reg"]_vars
W_PCancelReg  == [][\A x \in Xids : ~PCancelReg(x)]_vars
\* failedAsDrained 接进 PDrainLibFail：这一支真的放了源页（只在变异下可达；设计下 PDrainLibFail 只进隔离）
W_FadDrain    == [][\A p \in Pages : PDrainLibFail(p) => pst'[p] # "free"]_vars
\* decode growth and cancellation 的见证（应被违反 = 可达）
\* DGrow：加页被之后的一步读（sh = 2：先有一步写下、完成或还在途，再有一步发射读它）
W_GrowRead    == ~\E i \in DInst, s \in KSlots : kpin[i][s] /\ \E e \in krs[i][s] : e[4] = 2
\* DGrow：记录在 ovl（下一步已发射、还在跑）时加页
W_GrowOvl     == [][\A j \in Inst, r \in Rq : DGrow(j, r) => ph[j][r] # "ovl"]_vars
\* DGrow：记录结束时加页还被一步钉着，进 Drain（KDone 时回 Free）
W_GrowDrain   == ~\E i \in DInst, s \in KSlots : kpin[i][s] /\ \E e \in krs[i][s] : e[4] \in {2, 3} /\ pst[e[3]] = "drain"
\* DGrow：glue overlap 循环的形状（先发射 k+2 再收 k+1）：一步发射时读一页加页，而另一步（那页在它发射时还没人写过）还在 GPU 上
W_GrowOvlRead == [][\A i \in DInst, s \in KSlots, rows \in SUBSET Rq :
                    KLaunch(i, s, rows) =>
                      ~\E e \in krs'[i][s], s1 \in KSlots :
                         /\ e[4] = 2 /\ s1 # s /\ kfly[i][s1]
                         /\ \E e1 \in krs[i][s1] : e1[3] = e[3] /\ e1[4] = 3]_vars
\* PReg 超时修法：PEnd 先取消登记态的 x 那一支真的发生过
W_PEndCancelReg == [][\A i \in Inst, r \in Rq : ~(ph[i][r] = "reg" /\ (PTimeout(i, r) \/ PAbort(i, r)))]_vars
\* PReg 超时修法：记录结束后、源页 Drain 期间的登记态 x 由 PCancelReg 放（DrainTimeout 不使能的那条出口）
W_PCancelDrain == [][\A x \in Xids : PCancelReg(x) => ~(pst[xsrc[x]] = "drain" /\ ph[xp[x]][xr[x]] = "end")]_vars


\* Ported onto B2; Init/Next/Safety unchanged.
\* HwStop is physical truth, not necessarily observable after LibFailRet.
\* Teardown is the successful A7 revoke barrier, NOT merely calling an API.
EventualStopEvidence ==
  /\ \A x \in Xids : WF_vars(HwStop(x) /\ SFollow)
  /\ \A j, i \in Inst : WF_vars(Teardown(j, i) /\ SFollow)
FairStop == Fair /\ EventualStopEvidence
LStopSpec == Spec /\ FairStop

\* Software progress and owner recovery are separate from the hardware contract.
FairUnquarantine == \A p \in Pages : WF_vars(Unquarantine(p) /\ SFollow)
OwnerRecovery == \A i \in Inst : WF_vars(Resume(i) /\ SFollow)
FairEviction == \A p \in Pages : WF_vars(Evict(p) /\ SFollow)
FairFinality == FairStop /\ FairUnquarantine /\ OwnerRecovery /\ FairEviction
LFinalitySpec == Spec /\ FairFinality

QuarEventuallyFree == \A p \in Pages : (pst[p] = "quar") ~> (pst[p] = "free")
\* Strict physical-pool finality. Unlike PagesBack, Shared is not Free.
PagesBackUnderFaults == <>[](\A p \in Pages : pst[p] = "free")
PhysicalStopProgress == \A x \in Xids : InFl(x) ~> (hw[x] = "stop")

\* Ablations keep the identical transition graph; only fairness changes.
LNoStopSpec == Spec /\ Fair /\ FairUnquarantine /\ OwnerRecovery /\ FairEviction
LNoUnquarantineSpec == Spec /\ FairStop /\ OwnerRecovery /\ FairEviction
LNoRecoverySpec == Spec /\ FairStop /\ FairUnquarantine /\ FairEviction
LNoEvictionSpec == Spec /\ FairStop /\ FairUnquarantine /\ OwnerRecovery
\* Explicitly weaker scope: only pages whose owner is eventually always alive.
\* A permanently dead peer does not require resurrection to reclaim our pages.
SurvivorQuarEventuallyFree ==
  \A p \in Pages : (<>[]alive[Loc(p)]) => ((pst[p] = "quar") ~> (pst[p] = "free"))
SurvivorPagesBackUnderFaults ==
  \A p \in Pages : (<>[]alive[Loc(p)]) => <>[](pst[p] = "free")
=============================================================================
