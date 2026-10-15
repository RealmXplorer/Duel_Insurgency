scoreboard players set @s kitTheme 0
function du-in:lobby/reset/item
playsound minecraft:ui.button.click master @s ~ ~ ~
playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 2 1.5
clear @s
execute if entity @s[tag=skinMenu] run function du-in:lobby/scheduled/shop
tag @s add kitsListed

tag @s add menuRefresh

#execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme
#function du-in:lobby/kitmenu/menu/load_group with storage du-in:temp
