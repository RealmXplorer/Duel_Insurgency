execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 1
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:lobby/kitmenu/menu/last_wish/jack_horner

execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:lobby/kitmenu/menu/last_wish/display


execute if entity @s[tag=kitsListed] run tag @s remove kitsListed