execute if score #main lobbyTheme matches 1 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/teamhall",custom_name='{"text":"Team Play","color":"dark_purple","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'teamItem'}]
execute if score #main lobbyTheme matches 2 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/teamthanks",custom_name='{"text":"Team Play","color":"#75430B","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'teamItem'}]
execute if score #main lobbyTheme matches 3 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/teamchrist",custom_name='{"text":"Team Play","color":"dark_green","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'teamItem'}]
execute if score #main lobbyTheme matches 4 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/teameast",custom_name='{"text":"Team Play","color":"light_purple","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'teamItem'}]