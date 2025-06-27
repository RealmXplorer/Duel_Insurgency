scoreboard players add @s killScale 1
function du-in:other/settings/scales/classicap
setblock ~2 ~ ~ minecraft:birch_button[facing=east] destroy
execute store result score #main killScale run scoreboard players get @s killScale