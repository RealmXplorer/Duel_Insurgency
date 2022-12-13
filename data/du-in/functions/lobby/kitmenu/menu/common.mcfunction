execute if entity @s[scores={kitTheme=0}] run function du-in:lobby/kitmenu/menu/unlock
execute if entity @s[scores={kitTheme=1}] run function du-in:lobby/kitmenu/menu/minecraft
execute if entity @s[scores={kitTheme=2}] run function du-in:lobby/kitmenu/menu/undertale
execute if entity @s[scores={kitTheme=3}] run function du-in:lobby/kitmenu/menu/starwars
#execute if entity @s[scores={kitTheme=4}] run function du-in:lobby/kitmenu/menu/zootopia
execute if entity @s[scores={kitTheme=4}] run function du-in:lobby/kitmenu/menu/grab_bag
#execute if entity @s[scores={kitTheme=5}] run function du-in:lobby/kitmenu/menu/terraria
#execute if entity @s[scores={kitTheme=6}] run function du-in:lobby/kitmenu/menu/fnaf


execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:9b}]}] if entity @s[scores={kitTheme=1..3}] run function du-in:lobby/kitmenu/menu/next
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:27b}]}] if entity @s[scores={kitTheme=2..}] run function du-in:lobby/kitmenu/menu/prev
execute if entity @s[scores={kitTheme=1..},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:28b}]}] run function du-in:lobby/kitmenu/menu/random
execute if entity @s[scores={kitTheme=1..},tag=!playing,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:35b}]}] run function du-in:lobby/kitmenu/menu/spectate
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:30b}]},scores={kitTheme=1..}] run function du-in:lobby/kitmenu/menu/to_legend

execute if entity @s[scores={info=1..}] run function du-in:lobby/kitmenu/select/info