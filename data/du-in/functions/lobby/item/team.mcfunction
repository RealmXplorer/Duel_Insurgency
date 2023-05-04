clear @s minecraft:carrot_on_a_stick{teamItem:1b}

execute if entity @s[gamemode=!creative,tag=teamMode,tag=!playing,tag=!working,tag=!subLobby] unless score #main lobbyTheme matches 1.. run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{CustomModelData:1013,display:{Name:'{"text":"Team Play","color":"green","bold":true,"italic":false}',Lore:['{"text":"Right click to use!","color":"dark_purple"}']},fixedItem:1b,teamItem:1b,weaponItem:1b}
execute if entity @s[gamemode=!creative,tag=teamMode,tag=!playing,tag=!working,tag=!subLobby] if score #main lobbyTheme matches 1.. run function du-in:lobby/item/holiday/holiteam

#TEAMPLAY NOT ACTIVE#
item replace entity @s[gamemode=!creative,tag=!teamMode,tag=!playing,tag=!working,tag=!subLobby] hotbar.2 with minecraft:carrot_on_a_stick{CustomModelData:1016,display:{Name:'{"text":"Team Play","color":"red","bold":true,"italic":false}',Lore:['{"text":"Right click to use!","color":"dark_purple"}']},fixedItem:1b,weaponItem:1b,teamItem:1b}