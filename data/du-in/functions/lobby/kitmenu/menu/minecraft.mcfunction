execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 7

execute unless items entity @s inventory.7 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/spider
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/zombie
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/slime
execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/creeper
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/golem
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/player
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/minecraft/villager

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:16b}]}] run function du-in:lobby/kitmenu/menu/minecraft/spider
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:15b}]}] run function du-in:lobby/kitmenu/menu/minecraft/zombie
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:14b}]}] run function du-in:lobby/kitmenu/menu/minecraft/slime
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:13b}]}] run function du-in:lobby/kitmenu/menu/minecraft/creeper
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:lobby/kitmenu/menu/minecraft/golem
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:lobby/kitmenu/menu/minecraft/player
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:lobby/kitmenu/menu/minecraft/villager

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:lobby/kitmenu/menu/minecraft/display
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/minecraft/display

execute if entity @s[tag=kitsListed] run tag @s remove kitsListed