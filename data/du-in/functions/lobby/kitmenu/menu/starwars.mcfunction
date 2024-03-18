execute if entity @s[tag=kitsListed] run scoreboard players set @s kitList 4

execute unless items entity @s inventory.4 minecraft:player_head run function du-in:lobby/kitmenu/menu/starwars/yoda
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:lobby/kitmenu/menu/starwars/palps
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:lobby/kitmenu/menu/starwars/vader
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:lobby/kitmenu/menu/starwars/kylo

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:13b}]}] run function du-in:lobby/kitmenu/menu/starwars/yoda
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:lobby/kitmenu/menu/starwars/palps
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:lobby/kitmenu/menu/starwars/vader
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:lobby/kitmenu/menu/starwars/kylo

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:lobby/kitmenu/menu/starwars/display
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:lobby/kitmenu/menu/starwars/display

execute if entity @s[tag=kitsListed] run tag @s remove kitsListed