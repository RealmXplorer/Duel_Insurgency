scoreboard players add @s ctfScale 1
function du-in:other/settings/scales/ctfcap
setblock ~2 ~ ~ minecraft:birch_button[facing=east] destroy
execute store result score #main ctfScale run scoreboard players get @s ctfScale