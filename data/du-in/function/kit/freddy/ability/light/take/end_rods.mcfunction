#Set light type
scoreboard players set @s lightType 12

#Get End Rod Type
execute if block ~ ~ ~ minecraft:end_rod[facing=up] run data modify entity @s data.facing set value "up"
execute if block ~ ~ ~ minecraft:end_rod[facing=down] run data modify entity @s data.facing set value "down"
execute if block ~ ~ ~ minecraft:end_rod[facing=east] run data modify entity @s data.facing set value "east"
execute if block ~ ~ ~ minecraft:end_rod[facing=west] run data modify entity @s data.facing set value "west"
execute if block ~ ~ ~ minecraft:end_rod[facing=north] run data modify entity @s data.facing set value "north"
execute if block ~ ~ ~ minecraft:end_rod[facing=south] run data modify entity @s data.facing set value "south"

setblock ~ ~ ~ air

#Start timer for this light
function du-in:kit/freddy/ability/start_timer