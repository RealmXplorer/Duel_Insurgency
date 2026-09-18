#End ability
tag @s remove kitActions

#If player is too far
execute unless entity @a[distance=.05..4,tag=playing,gamemode=!spectator,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far

#If player is in range
function du-in:kit/jevil/ability/success
