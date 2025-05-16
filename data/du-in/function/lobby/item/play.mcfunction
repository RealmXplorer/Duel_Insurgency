clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'playItem'}]

execute unless score #main pylonsDestroyed matches 3.. unless score #main lobbyTheme matches 1.. run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/play",item_name={text:"Play",color:green,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'playItem'}]
execute unless score #main pylonsDestroyed matches 3.. if score #main lobbyTheme matches 1.. run function du-in:lobby/item/holiday/holiplay
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/void_play",item_name={text:"RUN",color:green,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'playItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]

#,consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}