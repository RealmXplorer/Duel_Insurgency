#Set light type
scoreboard players set @s lightType 13
say found pumpkin

#Get End Rod Type
execute if block ~ ~ ~ minecraft:jack_o_lantern[facing=east] run data modify entity @s data.facing set value "east"
execute if block ~ ~ ~ minecraft:jack_o_lantern[facing=west] run data modify entity @s data.facing set value "west"
execute if block ~ ~ ~ minecraft:jack_o_lantern[facing=north] run data modify entity @s data.facing set value "north"
execute if block ~ ~ ~ minecraft:jack_o_lantern[facing=south] run data modify entity @s data.facing set value "south"

function du-in:kit/freddy/ability/light/take/extinguish_pumpkin with entity @s data


#Start timer for this light
function du-in:kit/freddy/ability/start_timer