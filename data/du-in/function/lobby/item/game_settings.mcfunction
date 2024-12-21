clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'gameSettingItem'}]

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!gameSettings] hotbar.4 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/shop",custom_name='{"text":"Game Settings","color":"green","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'gameSettingItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!gameSettings] hotbar.4 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/void_shop",custom_name='{"text":"I CAN SEE YOU","color":"dark_gray","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'gameSettingItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]