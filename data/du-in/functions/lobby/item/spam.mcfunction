execute if entity @s[tag=givenSpam] run function du-in:lobby/actions/spam_mode
clear @s minecraft:cookie
execute unless score #main pylonsDestroyed matches 3 run item replace entity @s[gamemode=!creative,tag=!playing,tag=!working] inventory.15 with minecraft:cookie{display:{Name:'{"text":"Spam mode","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"Click to allow spam clicking!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b}
execute if score #main pylonsDestroyed matches 3 run item replace entity @s[gamemode=!creative,tag=!playing,tag=!working] inventory.15 with minecraft:cookie{display:{Name:'{"text":"MY REALITY","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"NOWHERE TO GO BACK TO!","color":"dark_purple"}']},CustomModelData:100,fixedItem:1b,weaponItem:1b}

tag @s add givenSpam