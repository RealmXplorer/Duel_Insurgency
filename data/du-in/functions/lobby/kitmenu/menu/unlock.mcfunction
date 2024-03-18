execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 5


#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:14b}]}] run function du-in:lobby/kitmenu/menu/unlock/paz
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:13b}]}] run function du-in:lobby/kitmenu/menu/unlock/jerma
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:lobby/kitmenu/menu/unlock/runza
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:lobby/kitmenu/menu/unlock/impost
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:lobby/kitmenu/menu/unlock/saac

execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/paz
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/jerma
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/runza
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/impost
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/unlock/saac

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:32b}]}] run function du-in:lobby/kitmenu/menu/from_legend
execute unless items entity @s inventory.23 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/from_legend

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:lobby/kitmenu/menu/unlock/display
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/unlock/display


execute if entity @s[tag=kitsListed] run tag @s remove kitsListed