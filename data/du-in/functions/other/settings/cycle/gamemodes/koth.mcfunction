scoreboard players add @s kothScale 1
function du-in:lobby/scales/kothcap
setblock ~2 ~ ~ minecraft:birch_button[facing=east] destroy
execute store result score #main kothScale run scoreboard players get @s kothScale