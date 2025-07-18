#If Cinder is close to enemy#
execute as @e[type=skeleton,tag=gonerThing,distance=0.05..6] run tag @s add cinderHit

particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:small_flame ~ ~1 ~ 1 1 1 0.05 50 force
particle minecraft:flame ~ ~1 ~ 0 0 0 0.4 100 force
playsound minecraft:cinder.boom master @a ~ ~ ~ 100 1
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10 normal

effect give @s fire_resistance 2 0 true

execute as @e[type=skeleton,tag=gonerThing,tag=cinderHit] at @s run function du-in:kit/cinder/ability/sword/damage

clear @s #du-in:ability
xp set @s[tag=!stolen] 350 levels
tag @a remove cinderHit
tag @s add kitDone