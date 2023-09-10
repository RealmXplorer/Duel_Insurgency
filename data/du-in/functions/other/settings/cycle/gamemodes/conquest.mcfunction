scoreboard players add @s conqScale 1
function du-in:lobby/scales/conquestcap
execute store result score #main conqScale run scoreboard players get @s conqScale
setblock ~2 ~ ~ minecraft:birch_button[facing=east] destroy