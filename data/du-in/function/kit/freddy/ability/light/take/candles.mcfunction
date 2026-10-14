#Set light type
scoreboard players set @s lightType 11

#Get Candle Type
execute if block ~ ~ ~ minecraft:candle run data modify entity @s data.id set value "minecraft:candle"
execute if block ~ ~ ~ minecraft:white_candle run data modify entity @s data.id set value "minecraft:white_candle"
execute if block ~ ~ ~ minecraft:black_candle run data modify entity @s data.id set value "minecraft:black_candle"
execute if block ~ ~ ~ minecraft:blue_candle run data modify entity @s data.id set value "minecraft:blue_candle"
execute if block ~ ~ ~ minecraft:red_candle run data modify entity @s data.id set value "minecraft:red_candle"
execute if block ~ ~ ~ minecraft:yellow_candle run data modify entity @s data.id set value "minecraft:yellow_candle"
execute if block ~ ~ ~ minecraft:green_candle run data modify entity @s data.id set value "minecraft:green_candle"
execute if block ~ ~ ~ minecraft:brown_candle run data modify entity @s data.id set value "minecraft:brown_candle"
execute if block ~ ~ ~ minecraft:gray_candle run data modify entity @s data.id set value "minecraft:gray_candle"
execute if block ~ ~ ~ minecraft:cyan_candle run data modify entity @s data.id set value "minecraft:cyan_candle"
execute if block ~ ~ ~ minecraft:light_gray_candle run data modify entity @s data.id set value "minecraft:light_gray_candle"
execute if block ~ ~ ~ minecraft:light_blue_candle run data modify entity @s data.id set value "minecraft:light_blue_candle"
execute if block ~ ~ ~ minecraft:pink_candle run data modify entity @s data.id set value "minecraft:pink_candle"
execute if block ~ ~ ~ minecraft:lime_candle run data modify entity @s data.id set value "minecraft:lime_candle"
execute if block ~ ~ ~ minecraft:purple_candle run data modify entity @s data.id set value "minecraft:purple_candle"
execute if block ~ ~ ~ minecraft:magenta_candle run data modify entity @s data.id set value "minecraft:magenta_candle"
execute if block ~ ~ ~ minecraft:orange_candle run data modify entity @s data.id set value "minecraft:orange_candle"

#Get Candle Count
execute if block ~ ~ ~ #minecraft:candles[candles=1] run data modify entity @s data.candles set value 1
execute if block ~ ~ ~ #minecraft:candles[candles=2] run data modify entity @s data.candles set value 2
execute if block ~ ~ ~ #minecraft:candles[candles=3] run data modify entity @s data.candles set value 3
execute if block ~ ~ ~ #minecraft:candles[candles=4] run data modify entity @s data.candles set value 4

#Save Marker entity data into storage and execute
function du-in:kit/freddy/ability/light/take/extinguish_candle with entity @s data

#Start timer for this light
function du-in:kit/freddy/ability/start_timer