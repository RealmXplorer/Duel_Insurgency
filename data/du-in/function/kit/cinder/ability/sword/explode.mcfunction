#If Cinder is close to enemy#
execute as @a[gamemode=!spectator,distance=0.05..6,tag=!teamDead] run tag @s add cinderHit
execute as @a[tag=cinderHit] if score @s team = @p[scores={kit=34},tag=kitActions] team run tag @s remove cinderHit

#execute if entity @a[gamemode=adventure,distance=0.05..6,tag=!teamDead] unless entity @a[tag=cinderHit] run function du-in:kit/all/ability/titles/team

particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:small_flame ~ ~1 ~ 1 1 1 0.05 50 force
particle minecraft:flame ~ ~1 ~ 0 0 0 0.4 100 force
playsound minecraft:cinder.boom master @a ~ ~ ~ 100 1
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10 normal

effect give @s fire_resistance 2 0 true

execute as @a[tag=cinderHit] at @s run function du-in:kit/cinder/ability/sword/damage

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 350 levels
tag @a remove cinderHit
tag @s add kitDone