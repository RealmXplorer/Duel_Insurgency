execute if entity @p[distance=0.05..10,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/chara/ability/success

#If player is too far
execute unless entity @p[distance=0.05..10,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#End Ability
tag @s remove kitActions