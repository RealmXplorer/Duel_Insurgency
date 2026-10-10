#Kits in menu
# execute if entity @s[scores={kitTheme=0}] run function du-in:lobby/kitmenu/menu/unlock
# execute if entity @s[scores={kitTheme=1}] run function du-in:lobby/kitmenu/menu/minecraft
# execute if entity @s[scores={kitTheme=2}] run function du-in:lobby/kitmenu/menu/undertale
# execute if entity @s[scores={kitTheme=3}] run function du-in:lobby/kitmenu/menu/starwars
# execute if entity @s[scores={kitTheme=4}] run function du-in:lobby/kitmenu/menu/zootopia
# execute if entity @s[scores={kitTheme=5}] run function du-in:lobby/kitmenu/menu/last_wish
# execute if entity @s[scores={kitTheme=6}] run function du-in:lobby/kitmenu/menu/fnaf
# execute if entity @s[scores={kitTheme=7}] run function du-in:lobby/kitmenu/menu/grab_bag

execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme
function du-in:lobby/kitmenu/menu/load_group with storage du-in:temp

#Menu change icons
execute unless items entity @s[scores={kitTheme=1..6}] inventory.0 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/next
execute unless items entity @s[scores={kitTheme=2..}] inventory.18 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/prev

#Add "from Legendary" menu icon
execute unless items entity @s[scores={kitTheme=0}] inventory.23 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/from_legend

#To legendary
execute unless items entity @s[scores={kitTheme=1..}] inventory.21 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/function/to_legend

#Theme Displays
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/theme_display

#Skin menu
execute if entity @s[tag=skinMenu] run return run function du-in:lobby/kitmenu/skins/common

##DEFAULTS
#Random button
execute unless items entity @s[scores={kitTheme=0}] inventory.19 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/random_legend
execute unless items entity @s[scores={kitTheme=1..}] inventory.19 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/random

#Spectate button
execute unless items entity @s[scores={kitTheme=0..},tag=!playing] inventory.26 minecraft:barrier run function du-in:lobby/kitmenu/menu/function/spectate

#Give info on character
execute if entity @s[scores={info=1..}] run function du-in:lobby/kitmenu/select/info