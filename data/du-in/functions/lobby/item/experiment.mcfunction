execute if entity @s[tag=givenEx] run function du-in:lobby/actions/experiment_mode
clear @s minecraft:writable_book
item replace entity @s[tag=lobby,gamemode=!creative,tag=!playing,tag=!working,tag=!parkour] inventory.0 with minecraft:writable_book{display:{Name:'{"text":"Experimental Mode","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Click to unlock experimental stuff!","color":"dark_purple"}']},fixedItem:1b,du-in:weaponItem}
tag @s add givenEx