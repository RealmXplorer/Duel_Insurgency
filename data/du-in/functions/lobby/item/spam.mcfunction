execute if entity @s[tag=givenSpam] run function du-in:lobby/actions/spam_mode
clear @s minecraft:cookie
item replace entity @s[gamemode=!creative,tag=!playing,tag=!working] inventory.15 with minecraft:cookie{display:{Name:'{"text":"Spam mode","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"Click to allow spam clicking!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b}
tag @s add givenSpam