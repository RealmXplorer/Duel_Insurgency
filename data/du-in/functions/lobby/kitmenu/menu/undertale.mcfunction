execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 9

execute unless items entity @s inventory.10 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/ralsei
execute unless items entity @s inventory.8 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/chara
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/gaster
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/asriel
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/flowey
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/papyrus
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/asgore
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/frisk
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/undertale/sans

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:19b}]}] run function du-in:lobby/kitmenu/menu/undertale/ralsei
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:17b}]}] run function du-in:lobby/kitmenu/menu/undertale/chara
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:16b}]}] run function du-in:lobby/kitmenu/menu/undertale/gaster
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:15b}]}] run function du-in:lobby/kitmenu/menu/undertale/asriel
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:14b}]}] run function du-in:lobby/kitmenu/menu/undertale/flowey
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:13b}]}] run function du-in:lobby/kitmenu/menu/undertale/papyrus
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:lobby/kitmenu/menu/undertale/asgore
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:lobby/kitmenu/menu/undertale/frisk
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:lobby/kitmenu/menu/undertale/sans

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:lobby/kitmenu/menu/undertale/display
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/undertale/display

execute if entity @s[tag=kitsListed] run tag @s remove kitsListed