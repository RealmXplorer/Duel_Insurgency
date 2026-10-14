scoreboard players set @s lightType 5

#Get Copper Bulb Type
execute if block ~ ~ ~ minecraft:copper_bulb run data modify entity @s data.id set value "minecraft:copper_bulb"
execute if block ~ ~ ~ minecraft:exposed_copper_bulb run data modify entity @s data.id set value "minecraft:exposed_copper_bulb"
execute if block ~ ~ ~ minecraft:weathered_copper_bulb run data modify entity @s data.id set value "minecraft:weathered_copper_bulb"
execute if block ~ ~ ~ minecraft:oxidized_copper_bulb run data modify entity @s data.id set value "minecraft:oxidized_copper_bulb"
execute if block ~ ~ ~ minecraft:waxed_copper_bulb run data modify entity @s data.id set value "minecraft:waxed_copper_bulb"
execute if block ~ ~ ~ minecraft:waxed_exposed_copper_bulb run data modify entity @s data.id set value "minecraft:waxed_exposed_copper_bulb"
execute if block ~ ~ ~ minecraft:waxed_weathered_copper_bulb run data modify entity @s data.id set value "minecraft:waxed_weathered_copper_bulb"
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb run data modify entity @s data.id set value "minecraft:waxed_oxidized_copper_bulb"

#Save Marker entity data into storage and execute
#data modify storage du-in:temp copper_bulb set from entity @s data
#function du-in:kit/freddy/ability/light/take/depower_bulb with storage du-in:temp copper_bulb
function du-in:kit/freddy/ability/light/take/depower_bulb with entity @s data

function du-in:kit/freddy/ability/start_timer
# execute if block ~ ~ ~ copper_bulb run scoreboard players set @s lightVariant 1
# execute if block ~ ~ ~ exposed_copper_bulb run scoreboard players set @s lightVariant 2
# execute if block ~ ~ ~ weathered_copper_bulb run scoreboard players set @s lightVariant 3
# execute if block ~ ~ ~ oxidized_copper_bulb run scoreboard players set @s lightVariant 4
# execute if block ~ ~ ~ waxed_copper_bulb run scoreboard players set @s lightVariant 5
# execute if block ~ ~ ~ waxed_exposed_copper_bulb run scoreboard players set @s lightVariant 6
# execute if block ~ ~ ~ waxed_weathered_copper_bulb run scoreboard players set @s lightVariant 7
# execute if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @s lightVariant 8

# execute if entity @s[scores={lightVariant=1}] run setblock ~ ~ ~ copper_bulb[lit=false]
# execute if entity @s[scores={lightVariant=2}] run setblock ~ ~ ~ exposed_copper_bulb[lit=false]
# execute if entity @s[scores={lightVariant=3}] run setblock ~ ~ ~ weathered_copper_bulb[lit=false]
# execute if entity @s[scores={lightVariant=4}] run setblock ~ ~ ~ oxidized_copper_bulb[lit=false]
# execute if entity @s[scores={lightVariant=5}] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
# execute if entity @s[scores={lightVariant=6}] run setblock ~ ~ ~ waxed_exposed_copper_bulb[lit=false]
# execute if entity @s[scores={lightVariant=7}] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
# execute if entity @s[scores={lightVariant=8}] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]
