scoreboard players add @s gameTimeScale 1
function du-in:other/settings/scales/gametimecap
setblock ~2 ~ ~ minecraft:polished_blackstone_button[facing=east] destroy
execute store result score #main gameTimeScale run scoreboard players get @s gameTimeScale