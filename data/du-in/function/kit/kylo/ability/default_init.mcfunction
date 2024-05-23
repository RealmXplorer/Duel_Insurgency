#If player is close
execute if entity @a[distance=0.05..6,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/kylo/ability/success

#If player is too far
execute unless entity @a[distance=0.05..6,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#End Ability
tag @s remove kitActions