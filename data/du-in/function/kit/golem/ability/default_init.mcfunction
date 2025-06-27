#If Golem is close to enemy#
execute if entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/golem/ability/hit

#If Golem is far from enemy#
execute unless entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/titles/far

#Finish Ability#
tag @s remove kitActions