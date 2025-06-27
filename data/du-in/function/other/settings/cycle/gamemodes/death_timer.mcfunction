scoreboard players add @s dtScale 1
function du-in:other/settings/scales/death_timer_cap
setblock ~2 ~ ~ minecraft:polished_blackstone_button[facing=east] destroy
execute store result score #main dtScale run scoreboard players get @s dtScale