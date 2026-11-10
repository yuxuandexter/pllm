#!/usr/bin/env python3
"""Replay the fixed rejection schedule with independent observations.

Capture P's actual construction geometry and wrap D's existing ledger before
the first request. Preserve operations, returns, and the original injections."""
import argparse
import json
import os
from pathlib import Path
import sys


def run(tree,out,case,ps,pages,warm):
    sys.path[:0]=[str(tree/'python'),str(tree/'tests/disagg')]
    import pytest
    import torch
    from minisgl.disagg import trace as T, ledger as L
    import test_prefix_glue as B
    from test_scheduler_stub import no_pinned_memory
    torch.set_num_threads(1)
    mp=pytest.MonkeyPatch(); no_pinned_memory.__wrapped__(mp); B.exact_cpu_compare.__wrapped__(mp)
    stream=out.open('x'); original=T.logger.info; write=T.write
    def capture(msg,*args,**kwargs):
        if msg.startswith('PDT '): stream.write((msg % args)+'\n')
        return original(msg,*args,**kwargs)
    def observed_write(rec,step=False):
        if rec.get('k')=='role' and rec.get('side')=='P':
            rec=dict(rec,ps=ps,np=pages)
        return write(rec,step=step)
    mp.setattr(T.logger,'info',capture); mp.setattr(T,'write',observed_write)
    h=B.Harness(ps=ps,pages=pages)
    # The fixed fixture had intentionally left D untraced. Wrap that exact object.
    original_d=h.d
    assert original_d.num_pages==256 and original_d.page_size==ps
    class ObservedD(T.TracedLedger):
        def open_req(self, room, **kw):
            gen=super().open_req(room, **kw)
            # Real DecodePD normally supplies this logging context. The original
            # Harness uses a bare D ledger, so bind the actual call argument here.
            self.bind(gen, room=room)
            return gen
    h.d=ObservedD(original_d,original_d.instance,'D')
    h.d.event('role',ps=original_d.page_size,np=original_d.num_pages,flush=False)
    failure=None
    try:
        if case=='HIT_NOREF':
            for uid in range(1,warm+1): h.seed(uid=uid,tokens=[7]*ps+[8,9])
            h.admit(warm+1,[7]*ps+[10,11])
        elif case=='DEDUP_NOREMAP':
            # The original test hardcodes ps=2; preserve its exact schedule.
            assert ps==2 and warm==1
            B.test_calibration_dedupNoRemap(lambda:h)
        elif case=='EVICT_HELD':
            req,_=h.compute(h.admit(1,[7]*ps+[8,9])); h.finish(req)
        elif case=='normal':
            for uid in range(1,warm+1): h.seed(uid=uid,tokens=[7]*ps+[8,9])
            req,_=h.compute(h.admit(warm+1,[7]*ps+[10,11])); h.finish(req,post=False)
            assert h.c.flush_shared()==1
        else: raise ValueError(case)
    except L.LedgerViolation as ex:
        failure=str(ex)
    finally:
        h.close(); stream.write(json.dumps(dict(k='end',outcome='failed' if failure else 'passed'))+'\n')
        stream.close(); mp.undo()
    rs=[json.loads(s[4:]) for s in out.read_text().splitlines() if s.startswith('PDT ')]
    rejected=[r for r in rs if r.get('k')=='rejected']
    assert (case=='normal' and failure is None and not rejected) or (case!='normal' and failure is not None and len(rejected)==1)
    print(json.dumps(dict(case=case,records=len(rs),rejected_seq=rejected[0]['seq'] if rejected else None,
                         ps=ps,pages=pages,warm=warm,output=str(out))))

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__); p.add_argument('--tree',type=Path,required=True); p.add_argument('--out',type=Path,required=True)
    p.add_argument('--case',choices=['HIT_NOREF','DEDUP_NOREMAP','EVICT_HELD','normal'],required=True)
    p.add_argument('--ps',type=int,default=2); p.add_argument('--pages',type=int,default=24); p.add_argument('--warm',type=int,default=1)
    a=p.parse_args(); a.out.parent.mkdir(parents=True,exist_ok=True); run(a.tree,a.out,a.case,a.ps,a.pages,a.warm)
