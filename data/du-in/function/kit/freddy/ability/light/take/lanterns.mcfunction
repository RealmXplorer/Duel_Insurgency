scoreboard players set @s lightType 10
#Set default
data modify entity @s data.variant set value ""

#Set type
execute if block ~ ~ ~ minecraft:soul_lantern run data modify entity @s data.variant set value "soul_"

#Copper
execute if block ~ ~ ~ minecraft:copper_lantern run data modify entity @s data.variant set value "copper_"
execute if block ~ ~ ~ minecraft:waxed_copper_lantern run data modify entity @s data.variant set value "waxed_copper_"
execute if block ~ ~ ~ minecraft:exposed_copper_lantern run data modify entity @s data.variant set value "exposed_copper_"
execute if block ~ ~ ~ minecraft:waxed_exposed_copper_lantern run data modify entity @s data.variant set value "waxed_exposed_copper_"
execute if block ~ ~ ~ minecraft:weathered_copper_lantern run data modify entity @s data.variant set value "weathered_copper_"
execute if block ~ ~ ~ minecraft:waxed_weathered_copper_lantern run data modify entity @s data.variant set value "waxed_weathered_copper_"
execute if block ~ ~ ~ minecraft:oxidized_copper_lantern run data modify entity @s data.variant set value "oxidized_copper_"
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_lantern run data modify entity @s data.variant set value "waxed_oxidized_copper_"

#Set Hanging
data modify entity @s data.hanging set value "false"
execute if block ~ ~ ~ #minecraft:lanterns[hanging=true] run data modify entity @s data.hanging set value "true"

#Set waterlog
data modify entity @s data.waterlog set value ""
execute if block ~ ~ ~ #minecraft:lanterns[waterlogged=true] run data modify entity @s data.waterlog set value ",waterlogged=true"

#Find Replacement Blocks
#Determine replacement for STANDING lanterns (air vs water)
data modify entity @s data.replacement set value "air"
execute if block ~ ~ ~ #minecraft:lanterns[waterlogged=true] run data modify entity @s data.replacement set value "water"

#Determine chain material for HANGING lanterns
data modify entity @s data.chain_material set value "iron_"
execute if block ~ ~ ~ #minecraft:copper_lanterns run data modify entity @s data.chain_material set from entity @s data.variant

#Execute Macro based on hanging state
execute unless block ~ ~ ~ #minecraft:lanterns[hanging=true] run function du-in:kit/freddy/ability/light/take/lantern_standing with entity @s data
execute if block ~ ~ ~ #minecraft:lanterns[hanging=true] run function du-in:kit/freddy/ability/light/take/lantern_hanging with entity @s data

function du-in:kit/freddy/ability/start_timer

#Save Marker entity data into storage and execute
#data modify storage du-in:temp candle set from entity @s data
#function du-in:kit/freddy/ability/light/take/extinguish_candle with storage du-in:temp candle
