execute if score @s lightVariant matches 1 run setblock ~ ~ ~ lantern[waterlogged=true]
execute if score @s lightVariant matches 2 run setblock ~ ~ ~ soul_lantern[waterlogged=true]
execute if score @s lightVariant matches 3 run setblock ~ ~ ~ copper_lantern[waterlogged=true]

execute if score @s lightVariant matches 4 run setblock ~ ~ ~ lantern[hanging=true,waterlogged=true]
execute if score @s lightVariant matches 5 run setblock ~ ~ ~ soul_lantern[hanging=true,waterlogged=true]
execute if score @s lightVariant matches 6 run setblock ~ ~ ~ copper_lantern[hanging=true,waterlogged=true]

kill @s