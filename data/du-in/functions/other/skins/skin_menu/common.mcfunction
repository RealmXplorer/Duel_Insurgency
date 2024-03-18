execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 20

execute unless items entity @s inventory.22 minecraft:player_head run function du-in:other/skins/skin_menu/slime
execute unless items entity @s inventory.21 minecraft:player_head run function du-in:other/skins/skin_menu/palps
execute unless items entity @s inventory.20 minecraft:player_head run function du-in:other/skins/skin_menu/asgore
execute unless items entity @s inventory.19 minecraft:player_head run function du-in:other/skins/skin_menu/kylo


#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:26b}]}] run function du-in:other/skins/skin_menu/villager
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:25b}]}] run function du-in:other/skins/skin_menu/frisk
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:24b}]}] run function du-in:other/skins/skin_menu/flowey
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:23b}]}] run function du-in:other/skins/skin_menu/golem
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:22b}]}] run function du-in:other/skins/skin_menu/ralsei
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:21b}]}] run function du-in:other/skins/skin_menu/sans
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:20b}]}] run function du-in:other/skins/skin_menu/puss
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:19b}]}] run function du-in:other/skins/skin_menu/chara

execute unless items entity @s inventory.17 minecraft:player_head run function du-in:other/skins/skin_menu/villager
execute unless items entity @s inventory.16 minecraft:player_head run function du-in:other/skins/skin_menu/frisk
execute unless items entity @s inventory.15 minecraft:player_head run function du-in:other/skins/skin_menu/flowey
execute unless items entity @s inventory.14 minecraft:player_head run function du-in:other/skins/skin_menu/golem
execute unless items entity @s inventory.13 minecraft:player_head run function du-in:other/skins/skin_menu/ralsei
execute unless items entity @s inventory.12 minecraft:player_head run function du-in:other/skins/skin_menu/sans
execute unless items entity @s inventory.11 minecraft:player_head run function du-in:other/skins/skin_menu/puss
execute unless items entity @s inventory.10 minecraft:player_head run function du-in:other/skins/skin_menu/chara

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:17b}]}] run function du-in:other/skins/skin_menu/springtrap
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:16b}]}] run function du-in:other/skins/skin_menu/zombie
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:15b}]}] run function du-in:other/skins/skin_menu/creeper
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:14b}]}] run function du-in:other/skins/skin_menu/player
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:13b}]}] run function du-in:other/skins/skin_menu/gaster
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:other/skins/skin_menu/clairen
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:other/skins/skin_menu/nick
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:other/skins/skin_menu/cuphead

execute unless items entity @s inventory.8 minecraft:player_head run function du-in:other/skins/skin_menu/springtrap
execute unless items entity @s inventory.7 minecraft:player_head run function du-in:other/skins/skin_menu/zombie
execute unless items entity @s inventory.6 minecraft:player_head run function du-in:other/skins/skin_menu/creeper
execute unless items entity @s inventory.5 minecraft:player_head run function du-in:other/skins/skin_menu/player

execute unless items entity @s inventory.4 minecraft:player_head run function du-in:other/skins/skin_menu/gaster
execute unless items entity @s inventory.3 minecraft:player_head run function du-in:other/skins/skin_menu/clairen
execute unless items entity @s inventory.2 minecraft:player_head run function du-in:other/skins/skin_menu/nick
execute unless items entity @s inventory.1 minecraft:player_head run function du-in:other/skins/skin_menu/cuphead

#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:other/skins/skin_menu/display
execute unless items entity @s inventory.9 minecraft:carrot_on_a_stick run function du-in:other/skins/skin_menu/display
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:9b}]}] run function du-in:other/skins/skin_menu/default_skins
execute unless items entity @s inventory.0 minecraft:barrier run function du-in:other/skins/skin_menu/default_skins


execute if entity @s[tag=skinsListed] run tag @s remove skinsListed