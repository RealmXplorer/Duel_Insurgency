scoreboard players add @s dmScale 1
function du-in:lobby/scales/dmcap
setblock ~2 ~ ~ minecraft:birch_button[facing=east] destroy
execute store result score #main dmScale run scoreboard players get @s dmScale