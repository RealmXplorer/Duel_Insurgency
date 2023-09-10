scoreboard players add @s tKillScale 1
function du-in:lobby/scales/tclassicap
setblock ~2 ~ ~ minecraft:polished_blackstone_button[facing=east] destroy
execute store result score #main tKillScale run scoreboard players get @s tKillScale