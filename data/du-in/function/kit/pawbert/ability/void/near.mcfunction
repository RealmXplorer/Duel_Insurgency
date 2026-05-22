tag @e[distance=0.05..4] add wildeHit
execute as @n[distance=0.05..4,type=skeleton] run kill @s
execute as @e[distance=0.05..4,type=skeleton] run team join Insurgent @s 

particle minecraft:heart ~ ~1.5 ~ 2 2 2 0 25 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 0.95

effect give @s minecraft:speed 2 2 true
effect give @s minecraft:resistance 2 2 true

clear @s #du-in:ability
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone