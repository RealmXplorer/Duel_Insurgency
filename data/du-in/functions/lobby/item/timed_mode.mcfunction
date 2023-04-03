execute if entity @s[tag=givenTimed] run function du-in:lobby/actions/timed_mode
clear @s minecraft:iron_ingot
item replace entity @s[gamemode=!creative,tag=!playing,tag=!working] inventory.13 with minecraft:iron_ingot{display:{Name:'{"text":"Timed Mode","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"Game runs on timer rather than scores!","color":"dark_purple"}']},CustomModelData:100,fixedItem:1b,weaponItem:1b}
tag @s add givenTimed