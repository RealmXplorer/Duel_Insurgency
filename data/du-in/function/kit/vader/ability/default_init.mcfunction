#If player is too far
execute unless entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far

#If player is near and valid, run
function du-in:kit/vader/ability/success
