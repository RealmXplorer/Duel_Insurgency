
#Start index from current value and start load sequence for indexed group
#execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme
#function du-in:lobby/kitmenu/menu/load_group with storage du-in:temp

#execute if entity @s[tag=menuRefresh] run function du-in:lobby/kitmenu/menu/render_menu


##GENERAL FUNCTIONS (Applicable across themes)
#Menu change icons
execute if score @s kitTheme matches 1.. if score @s kitTheme < #main maxThemes unless items entity @s inventory.8 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/next


# execute unless items entity @s[scores={kitTheme=2..}] inventory.18 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/prev
execute unless items entity @s[scores={kitTheme=2..}] inventory.26 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/prev

#To and from legendary
execute unless items entity @s[scores={kitTheme=0}] inventory.21 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/from_legend
execute unless items entity @s[scores={kitTheme=1..}] inventory.21 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/to_legend

#Skin menu
execute if entity @s[tag=skinMenu] run return run function du-in:lobby/kitmenu/skins/common

##DEFAULTS
#Random button
execute unless items entity @s[scores={kitTheme=0}] inventory.24 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/random_legend
execute unless items entity @s[scores={kitTheme=1..}] inventory.24 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/random

#Spectate button
execute unless items entity @s[scores={kitTheme=0..},tag=!playing] inventory.18 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/spectate

#Give info on character
execute if entity @s[scores={info=1..}] run function du-in:lobby/kitmenu/select/info