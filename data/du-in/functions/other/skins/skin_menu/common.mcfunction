execute if entity @s[tag=skinsListed] run scoreboard players set @s skinList 16

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
execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:27b}]}] run function du-in:other/skins/skin_menu/hide_skins

execute if entity @s[tag=skinsListed] run tag @s remove skinsListed

#execute if entity @s[scores={kitTheme=0}] run function du-in:lobby/kitmenu/menu/unlock
#execute if entity @s[scores={kitTheme=1}] run function du-in:lobby/kitmenu/menu/minecraft
#execute if entity @s[scores={kitTheme=2}] run function du-in:lobby/kitmenu/menu/undertale
#execute if entity @s[scores={kitTheme=3}] run function du-in:lobby/kitmenu/menu/starwars
#execute if entity @s[scores={kitTheme=4}] run function du-in:lobby/kitmenu/menu/last_wish
#execute if entity @s[scores={kitTheme=5}] run function du-in:lobby/kitmenu/menu/grab_bag


#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:9b}]}] if entity @s[scores={kitTheme=1..4}] run function du-in:lobby/kitmenu/menu/next
#execute if entity @s[scores={kitTheme=1..},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:28b}]}] run function du-in:lobby/kitmenu/menu/random
#execute if entity @s[scores={kitTheme=1..},tag=!playing,nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:barrier",Slot:35b}]}] run function du-in:lobby/kitmenu/menu/spectate
#execute if entity @s[nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:30b}]},scores={kitTheme=1..}] run function du-in:lobby/kitmenu/menu/to_legend

#execute if entity @s[scores={info=1..}] run function du-in:lobby/kitmenu/select/info