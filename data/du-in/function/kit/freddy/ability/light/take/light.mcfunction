scoreboard players set @s lightType 1
scoreboard players set @s waterLogged 0

# execute if block ~ ~ ~ light[level=0] run scoreboard players set @s lightVariant 0
# execute if block ~ ~ ~ light[level=1] run scoreboard players set @s lightVariant 1
# execute if block ~ ~ ~ light[level=2] run scoreboard players set @s lightVariant 2
# execute if block ~ ~ ~ light[level=3] run scoreboard players set @s lightVariant 3
# execute if block ~ ~ ~ light[level=4] run scoreboard players set @s lightVariant 4
# execute if block ~ ~ ~ light[level=5] run scoreboard players set @s lightVariant 5
# execute if block ~ ~ ~ light[level=6] run scoreboard players set @s lightVariant 6
# execute if block ~ ~ ~ light[level=7] run scoreboard players set @s lightVariant 7
# execute if block ~ ~ ~ light[level=8] run scoreboard players set @s lightVariant 8
# execute if block ~ ~ ~ light[level=9] run scoreboard players set @s lightVariant 9
# execute if block ~ ~ ~ light[level=10] run scoreboard players set @s lightVariant 10
# execute if block ~ ~ ~ light[level=11] run scoreboard players set @s lightVariant 11
# execute if block ~ ~ ~ light[level=12] run scoreboard players set @s lightVariant 12
# execute if block ~ ~ ~ light[level=13] run scoreboard players set @s lightVariant 13
# execute if block ~ ~ ~ light[level=14] run scoreboard players set @s lightVariant 14
# execute if block ~ ~ ~ light[level=15] run scoreboard players set @s lightVariant 15

# execute if block ~ ~ ~ light[waterlogged=true] run scoreboard players set @s waterLogged 1

#Get Light Type
execute if block ~ ~ ~ minecraft:light[level=0] run data modify entity @s data.level set value 0
execute if block ~ ~ ~ minecraft:light[level=1] run data modify entity @s data.level set value 1
execute if block ~ ~ ~ minecraft:light[level=2] run data modify entity @s data.level set value 2
execute if block ~ ~ ~ minecraft:light[level=3] run data modify entity @s data.level set value 3
execute if block ~ ~ ~ minecraft:light[level=4] run data modify entity @s data.level set value 4
execute if block ~ ~ ~ minecraft:light[level=5] run data modify entity @s data.level set value 5
execute if block ~ ~ ~ minecraft:light[level=6] run data modify entity @s data.level set value 6
execute if block ~ ~ ~ minecraft:light[level=7] run data modify entity @s data.level set value 7
execute if block ~ ~ ~ minecraft:light[level=8] run data modify entity @s data.level set value 8
execute if block ~ ~ ~ minecraft:light[level=9] run data modify entity @s data.level set value 9
execute if block ~ ~ ~ minecraft:light[level=10] run data modify entity @s data.level set value 10
execute if block ~ ~ ~ minecraft:light[level=11] run data modify entity @s data.level set value 11
execute if block ~ ~ ~ minecraft:light[level=12] run data modify entity @s data.level set value 12
execute if block ~ ~ ~ minecraft:light[level=13] run data modify entity @s data.level set value 13
execute if block ~ ~ ~ minecraft:light[level=14] run data modify entity @s data.level set value 14
execute if block ~ ~ ~ minecraft:light[level=15] run data modify entity @s data.level set value 15

#Get Candle Count
#execute if block ~ ~ ~ minecraft:light[waterlogged=true] run data modify entity @s data.waterlog set value "waterlogged=true"

execute unless block ~ ~ ~ minecraft:light[waterlogged=true] run data modify entity @s data.waterlog set value ""
execute if block ~ ~ ~ minecraft:light[waterlogged=true] run data modify entity @s data.waterlog set value ",waterlogged=true"

execute unless block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ air
execute if block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ water

function du-in:kit/freddy/ability/start_timer