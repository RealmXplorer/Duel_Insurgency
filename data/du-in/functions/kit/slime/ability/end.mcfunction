particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 100 force
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 100000 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100000 0
clear @s #du-in:reset
scoreboard players set @s weapCount 0
tag @s remove magma
tag @s add armor
tag @s[tag=stolen] add kitDone
scoreboard players reset @s magmaTimer