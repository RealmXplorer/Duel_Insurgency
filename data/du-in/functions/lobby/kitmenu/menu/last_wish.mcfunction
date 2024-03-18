execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 3

execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/last_wish/death
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/last_wish/jack_horner
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/last_wish/puss

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:lobby/kitmenu/menu/last_wish/death
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:lobby/kitmenu/menu/last_wish/jack_horner
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:lobby/kitmenu/menu/last_wish/puss

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:lobby/kitmenu/menu/last_wish/display

execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/last_wish/display

execute if entity @s[tag=kitsListed] run tag @s remove kitsListed