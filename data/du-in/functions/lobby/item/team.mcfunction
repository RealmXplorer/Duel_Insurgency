clear @s minecraft:carrot_on_a_stick[custom_data={du-in:teamItem}]

execute unless score #main pylonsDestroyed matches 3.. if entity @s[gamemode=!creative,tag=teamMode,tag=!playing,tag=!working,tag=!subLobby] unless score #main lobbyTheme matches 1.. run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[custom_model_data=1013,custom_name='{"text":"Team Play","color":"green","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:teamItem}]

execute unless score #main pylonsDestroyed matches 3.. if entity @s[gamemode=!creative,tag=teamMode,tag=!playing,tag=!working,tag=!subLobby] if score #main lobbyTheme matches 1.. run function du-in:lobby/item/holiday/holiteam
execute if score #main pylonsDestroyed matches 3.. if entity @s[gamemode=!creative,tag=teamMode,tag=!playing,tag=!working,tag=!subLobby] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[custom_model_data=1043,custom_name='{"text":"YOU ARE ALONE","color":"gray","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:teamItem}]

#TEAMPLAY NOT ACTIVE#
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[gamemode=!creative,tag=!teamMode,tag=!playing,tag=!working,tag=!subLobby] hotbar.2 with minecraft:carrot_on_a_stick[custom_model_data=1016,custom_name='{"text":"Team Play","color":"red","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:teamItem}]

execute if score #main pylonsDestroyed matches 3.. run item replace entity @s[gamemode=!creative,tag=!teamMode,tag=!playing,tag=!working,tag=!subLobby] hotbar.2 with minecraft:carrot_on_a_stick[custom_model_data=1042,custom_name='{"text":"YOU ARE ALONE","color":"gray","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:teamItem}]
