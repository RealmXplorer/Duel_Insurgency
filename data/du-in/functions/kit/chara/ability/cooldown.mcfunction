effect give @s minecraft:speed 5 1 true

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 460 levels

scoreboard players set @s charaTimer 100
playsound minecraft:sans.ability master @a ~ ~ ~ .25 .95

#Particles and Sounds
particle minecraft:smoke ~ ~1.5 ~ 2 2 2 0 500 force
playsound minecraft:entity.vex.ambient master @a ~ ~ ~ 100 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 100 1
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 100 .1

tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone