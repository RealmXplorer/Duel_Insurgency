function du-in:kit/sauron/ring_attributes

#If Sauron is close to enemy#
execute as @a[distance=0.05..4,gamemode=!spectator,tag=!teamDead,tag=!startgame] run tag @s add sauronHit
execute as @a[tag=sauronHit] if score @s team = @p[scores={kit=31},tag=kitActions] team run tag @s remove sauronHit

#execute if entity @a[gamemode=adventure,distance=0.05..6,tag=!teamDead] unless entity @a[tag=sauronHit] run function du-in:kit/all/ability/titles/team

particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:small_flame ~ ~1 ~ 1 1 1 0.05 50 force
particle minecraft:flame ~ ~1 ~ 0 0 0 0.4 100 force
playsound minecraft:cinder.boom master @a ~ ~ ~ 100 1
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10 normal

effect give @s fire_resistance 2 0 true

execute as @a[tag=sauronHit] at @s run function du-in:kit/sauron/ability/ring_returned

tag @a remove sauronHit
attribute @s minecraft:attack_knockback base set 1
clear @s #du-in:ability
tag @s add cooldown
xp set @s 100 levels
