#If player is too far
execute unless entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far

#player in range
function du-in:kit/puss/ability/hit
