scoreboard players set @s kitTheme 0
function du-in:lobby/reset/item
playsound minecraft:ui.button.click master @s ~ ~ ~
playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 2 1.5
clear @s
tag @s add kitsListed