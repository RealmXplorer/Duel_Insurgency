execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 20

execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:31b}]}] run function du-in:other/skins/skin_menu/slime
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:30b}]}] run function du-in:other/skins/skin_menu/palps
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:29b}]}] run function du-in:other/skins/skin_menu/asgore
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:28b}]}] run function du-in:other/skins/skin_menu/kylo


execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:26b}]}] run function du-in:other/skins/skin_menu/villager
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:25b}]}] run function du-in:other/skins/skin_menu/frisk
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:24b}]}] run function du-in:other/skins/skin_menu/flowey
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:23b}]}] run function du-in:other/skins/skin_menu/golem
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:22b}]}] run function du-in:other/skins/skin_menu/ralsei
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:21b}]}] run function du-in:other/skins/skin_menu/sans
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:20b}]}] run function du-in:other/skins/skin_menu/puss
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:19b}]}] run function du-in:other/skins/skin_menu/chara


execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:17b}]}] run function du-in:other/skins/skin_menu/springtrap
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:16b}]}] run function du-in:other/skins/skin_menu/zombie
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:15b}]}] run function du-in:other/skins/skin_menu/creeper
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:14b}]}] run function du-in:other/skins/skin_menu/player
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:13b}]}] run function du-in:other/skins/skin_menu/gaster
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:12b}]}] run function du-in:other/skins/skin_menu/clairen
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:11b}]}] run function du-in:other/skins/skin_menu/nick
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:player_head",Slot:10b}]}] run function du-in:other/skins/skin_menu/cuphead

execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:18b}]}] run function du-in:other/skins/skin_menu/display
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:27b}]}] run function du-in:other/skins/skin_menu/hide_skins
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:9b}]}] run function du-in:other/skins/skin_menu/default_skins

execute if entity @s[tag=skinsListed] run tag @s remove skinsListed