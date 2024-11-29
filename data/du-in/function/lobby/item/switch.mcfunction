clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'wheelItem'}]
execute unless score #main pylonsDestroyed matches 3.. unless score #main lobbyTheme matches 1.. run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/gmswitch",custom_name='{"text":"Gamemode Switcher","color":"blue","bold":true,"italic":false}',minecraft:lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'wheelItem'}]

execute unless score #main pylonsDestroyed matches 3.. if score #main lobbyTheme matches 1.. run function du-in:lobby/item/holiday/holiwheel
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/void_gmswitch",custom_name='{"text":"HAHAHAHA","color":"dark_gray","bold":true,"italic":false}',minecraft:lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'wheelItem'}]
