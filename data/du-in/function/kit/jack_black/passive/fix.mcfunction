playsound minecraft:saac.line.fix record @a ~ ~ ~ 10 1 1
clear @s music_disc_11
tag @s remove broken
# scoreboard players set @s weapCount 0
function du-in:kit/all/weapon/give
scoreboard players reset @s saacDisTimer