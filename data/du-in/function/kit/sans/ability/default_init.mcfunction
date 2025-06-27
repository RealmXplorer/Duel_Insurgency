#Add "Hit" tag to nearest player
execute if entity @a[distance=0.05..4.5,gamemode=!spectator,tag=playing,tag=!teamDead] run function du-in:kit/sans/ability/enemy_hit

#Message and sound if no valid player nearby
execute unless entity @a[distance=0.05..4.5,gamemode=!spectator,tag=playing,tag=!teamDead] run function du-in:kit/all/ability/far

#End Ability
tag @s remove kitActions
