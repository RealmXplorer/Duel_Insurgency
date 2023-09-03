tag @e[distance=0.05..3.5] add wildeHit
execute as @e[type=skeleton,distance=0.05..3.5] run team join Insurgent @s 
execute as @a[tag=wildeHit] run function du-in:kit/nick/ability/team_hit

playsound minecraft:nick.hustle master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ 100 0.95

effect give @s minecraft:speed 2 2 true

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone