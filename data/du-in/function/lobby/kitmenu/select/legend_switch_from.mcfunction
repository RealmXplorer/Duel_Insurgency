scoreboard players set @s kitTheme 1
function du-in:lobby/reset/item
playsound minecraft:ui.button.click master @s ~ ~ ~
playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 2 .5
clear @s
scoreboard players set @s kitList 8
tag @s add kitsListed