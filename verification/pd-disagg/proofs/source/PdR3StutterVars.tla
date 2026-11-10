---- MODULE PdR3StutterVars ----
EXTENDS PdPBase

\* R3-VISIBILITY

LEMMA R3UnchangedVars ==
 ASSUME Sizes, Location, Design
 PROVE
                         UNCHANGED vars =>
 /\ gen' = gen
 /\ rt' = rt
 /\ rp' = rp
 /\ rd' = rd
 /\ hp' = hp
 /\ hd' = hd
 /\ alive' = alive
 /\ nfail' = nfail
 /\ torn' = torn
 /\ kpin' = kpin
 /\ kfly' = kfly
 /\ krs' = krs
 /\ ph' = ph
 /\ rg' = rg
 /\ rpg' = rpg
 /\ rpe' = rpe
 /\ rx' = rx
 /\ rhit' = rhit
 /\ pst' = pst
 /\ pr' = pr
 /\ pgn' = pgn
 /\ plt' = plt
 /\ ptl' = ptl
 /\ pvis' = pvis
 /\ led' = led
 /\ sfly' = sfly
 /\ sled' = sled
 /\ prefc' = prefc
 /\ pqp' = pqp
 /\ xr' = xr
 /\ xg' = xg
 /\ xk' = xk
 /\ xp' = xp
 /\ xd' = xd
 /\ xsrc' = xsrc
 /\ xdst' = xdst
 /\ xnt' = xnt
 /\ xlt' = xlt
 /\ hw' = hw
 /\ hok' = hok
 /\ iv' = iv
 /\ xst' = xst
 /\ nx' = nx
 /\ net' = net
 /\ drep' = drep
 /\ crep' = crep
 /\ dsucc' = dsucc
 /\ gbad' = gbad
 /\ spst' = spst
 /\ sown' = sown
 /\ sgen' = sgen
 /\ skey' = skey
 /\ swrite' = swrite
 /\ sdata' = sdata
 /\ sready' = sready
 /\ sprefc' = sprefc
 /\ smap' = smap
 /\ schoice' = schoice
 /\ rpgS' = rpgS
 /\ xsrcS' = xsrcS
 /\ xsrcP' = xsrcP
 /\ sentry' = sentry
 /\ squar' = squar
 /\ xprefixOK' = xprefixOK
 /\ dpreOK' = dpreOK
 /\ hitSeen' = hitSeen
 /\ dedupSeen' = dedupSeen
 BY Sizes, Location, Design DEF vars, basevars, rtV, instV, kV, recV, pgV, xV, ghV, sV, Sizes, Location, Design
====
