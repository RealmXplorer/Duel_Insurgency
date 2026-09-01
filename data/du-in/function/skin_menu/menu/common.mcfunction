#Kits in menu
execute if entity @s[scores={skinTheme=0}] run function du-in:skin_menu/menu/unlock
execute if entity @s[scores={skinTheme=1}] run function du-in:skin_menu/menu/minecraft
execute if entity @s[scores={skinTheme=2}] run function du-in:skin_menu/menu/undertale
execute if entity @s[scores={skinTheme=3}] run function du-in:skin_menu/menu/starwars
execute if entity @s[scores={skinTheme=4}] run function du-in:skin_menu/menu/zootopia
execute if entity @s[scores={skinTheme=5}] run function du-in:skin_menu/menu/last_wish
execute if entity @s[scores={skinTheme=6}] run function du-in:skin_menu/menu/grab_bag

#Menu change icons
execute unless items entity @s[scores={skinTheme=1..5}] inventory.0 minecraft:barrier run function du-in:skin_menu/menu/function/next
execute unless items entity @s[scores={skinTheme=2..}] inventory.18 minecraft:barrier run function du-in:skin_menu/menu/function/prev

#Random button
execute unless items entity @s inventory.19 minecraft:barrier run function du-in:skin_menu/menu/function/skin_presets

#Skin Select Display
execute unless items entity @s inventory.26 minecraft:carrot_on_a_stick run function du-in:skin_menu/menu/function/skin_display

#To legendary
execute unless items entity @s[scores={skinTheme=1..}] inventory.21 minecraft:carrot_on_a_stick run function du-in:skin_menu/menu/function/to_legend

#Theme Displays
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:skin_menu/menu/theme_display
