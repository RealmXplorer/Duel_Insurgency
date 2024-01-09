#Kits in menu
execute if entity @s[scores={kitTheme=0}] run function du-in:lobby/kitmenu/menu/unlock
execute if entity @s[scores={kitTheme=1}] run function du-in:lobby/kitmenu/menu/minecraft
execute if entity @s[scores={kitTheme=2}] run function du-in:lobby/kitmenu/menu/undertale
execute if entity @s[scores={kitTheme=3}] run function du-in:lobby/kitmenu/menu/starwars
execute if entity @s[scores={kitTheme=4}] run function du-in:lobby/kitmenu/menu/last_wish
execute if entity @s[scores={kitTheme=5}] run function du-in:lobby/kitmenu/menu/grab_bag

#Menu change icons
execute if entity @s[scores={kitTheme=1..4},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:9b}]}] run function du-in:lobby/kitmenu/menu/next
execute if entity @s[scores={kitTheme=2..},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:27b}]}] run function du-in:lobby/kitmenu/menu/prev

#Random button
execute if entity @s[scores={kitTheme=1..},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:28b}]}] run function du-in:lobby/kitmenu/menu/random
execute unless entity @s[tag=!pazUnlocked,tag=!saacUnlocked,tag=!runzaUnlocked,tag=!impostUnlocked,tag=!jermaUnlocked] if entity @s[scores={kitTheme=0},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:28b}]}] run function du-in:lobby/kitmenu/menu/random_legend

#Spectate button
execute if entity @s[scores={kitTheme=1..},tag=!playing,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:35b}]}] run function du-in:lobby/kitmenu/menu/spectate

#To legendary
execute if entity @s[scores={kitTheme=1..},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:30b}]}] run function du-in:lobby/kitmenu/menu/to_legend

#Give info on character
execute if entity @s[scores={info=1..}] run function du-in:lobby/kitmenu/select/info