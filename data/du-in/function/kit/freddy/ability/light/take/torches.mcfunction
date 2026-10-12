scoreboard players set @s lightType 9

#Get Torch Type
execute if block ~ ~ ~ minecraft:torch run data modify entity @s data.block set value "minecraft:torch"
execute if block ~ ~ ~ minecraft:soul_torch run data modify entity @s data.block set value "minecraft:soul_torch"
execute if block ~ ~ ~ minecraft:redstone_torch run data modify entity @s data.block set value "minecraft:redstone_torch"

execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run data modify entity @s data.block set value "minecraft:wall_torch[facing=north]"
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run data modify entity @s data.block set value "minecraft:wall_torch[facing=south]"
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run data modify entity @s data.block set value "minecraft:wall_torch[facing=east]"
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run data modify entity @s data.block set value "minecraft:wall_torch[facing=west]"

execute if block ~ ~ ~ minecraft:soul_wall_torch[facing=north] run data modify entity @s data.block set value "minecraft:soul_wall_torch[facing=north]"
execute if block ~ ~ ~ minecraft:soul_wall_torch[facing=south] run data modify entity @s data.block set value "minecraft:soul_wall_torch[facing=south]"
execute if block ~ ~ ~ minecraft:soul_wall_torch[facing=east] run data modify entity @s data.block set value "minecraft:soul_wall_torch[facing=east]"
execute if block ~ ~ ~ minecraft:soul_wall_torch[facing=west] run data modify entity @s data.block set value "minecraft:soul_wall_torch[facing=west]"

execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=north] run data modify entity @s data.block set value "minecraft:redstone_wall_torch[facing=north]"
execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=south] run data modify entity @s data.block set value "minecraft:redstone_wall_torch[facing=south]"
execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=east] run data modify entity @s data.block set value "minecraft:redstone_wall_torch[facing=east]"
execute if block ~ ~ ~ minecraft:redstone_wall_torch[facing=west] run data modify entity @s data.block set value "minecraft:redstone_wall_torch[facing=west]"

#Save Marker entity data into storage and execute
setblock ~ ~ ~ air

function du-in:kit/freddy/ability/start_timer