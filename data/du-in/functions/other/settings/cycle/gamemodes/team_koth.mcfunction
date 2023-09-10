scoreboard players add @s tKothScale 1
function du-in:lobby/scales/tkothcap
setblock ~2 ~ ~ minecraft:polished_blackstone_button[facing=east] destroy
execute store result score #main tKothScale run scoreboard players get @s tKothScale