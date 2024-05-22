execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 6

execute unless items entity @s inventory.6 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/cuphead
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/gumball
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/nick
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/clairen
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/yharim
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/grabbag/springtrap

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:15b}]}] run function du-in:lobby/kitmenu/menu/grabbag/cuphead
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:14b}]}] run function du-in:lobby/kitmenu/menu/grabbag/gumball
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:13b}]}] run function du-in:lobby/kitmenu/menu/grabbag/nick
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:lobby/kitmenu/menu/grabbag/clairen
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:lobby/kitmenu/menu/grabbag/yharim
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:lobby/kitmenu/menu/grabbag/springtrap

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:lobby/kitmenu/menu/grabbag/display
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/grabbag/display

execute if entity @s[tag=kitsListed] run tag @s remove kitsListed