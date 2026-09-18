#End Ability
tag @s remove kitActions

#If player is too far
execute unless entity @a[distance=0.05..6,tag=playing,gamemode=!spectator,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far

#If player is close
function du-in:kit/kylo/ability/success