tag @e[distance=0.05..4] add wildeHit
execute as @e[type=skeleton,distance=0.05..4] run team join Insurgent @s 
execute as @a[tag=wildeHit] run function du-in:kit/nick/ability/team_hit

particle minecraft:heart ~ ~1.5 ~ 2 2 2 0 25 force
playsound du-in:kit.nick.hustle master @a ~ ~ ~ 100 1
playsound du-in:sfx.ut.ability master @a ~ ~ ~ 100 0.95

effect give @s minecraft:speed 2 2 true

clear @s #du-in:ability
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone