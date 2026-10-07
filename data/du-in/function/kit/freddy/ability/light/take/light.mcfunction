scoreboard players set @s lightType 1

execute if block ~ ~ ~ light[level=0] run scoreboard players set @s lightVariant 0
execute if block ~ ~ ~ light[level=1] run scoreboard players set @s lightVariant 1
execute if block ~ ~ ~ light[level=2] run scoreboard players set @s lightVariant 2
execute if block ~ ~ ~ light[level=3] run scoreboard players set @s lightVariant 3
execute if block ~ ~ ~ light[level=4] run scoreboard players set @s lightVariant 4
execute if block ~ ~ ~ light[level=5] run scoreboard players set @s lightVariant 5
execute if block ~ ~ ~ light[level=6] run scoreboard players set @s lightVariant 6
execute if block ~ ~ ~ light[level=7] run scoreboard players set @s lightVariant 7
execute if block ~ ~ ~ light[level=8] run scoreboard players set @s lightVariant 8
execute if block ~ ~ ~ light[level=9] run scoreboard players set @s lightVariant 9
execute if block ~ ~ ~ light[level=10] run scoreboard players set @s lightVariant 10
execute if block ~ ~ ~ light[level=11] run scoreboard players set @s lightVariant 11
execute if block ~ ~ ~ light[level=12] run scoreboard players set @s lightVariant 12
execute if block ~ ~ ~ light[level=13] run scoreboard players set @s lightVariant 13
execute if block ~ ~ ~ light[level=14] run scoreboard players set @s lightVariant 14
execute if block ~ ~ ~ light[level=15] run scoreboard players set @s lightVariant 15

setblock ~ ~ ~ air

function du-in:kit/freddy/ability/start_timer