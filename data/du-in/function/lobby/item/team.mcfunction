clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'teamItem'}]

execute unless score #main pylonsDestroyed matches 3.. if entity @s[tag=teamMode] unless score #main lobbyTheme matches 1.. run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/teamplay",item_name={text:"Team Play",color:green,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'teamItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
execute unless score #main pylonsDestroyed matches 3.. if entity @s[tag=teamMode] if score #main lobbyTheme matches 1.. run function du-in:lobby/item/holiday/holiteam

execute if score #main pylonsDestroyed matches 3.. if entity @s[tag=teamMode] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/void_teamplay",item_name={text:"YOU ARE ALONE",color:gray,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'teamItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]

#TEAMPLAY NOT ACTIVE#
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!teamMode] hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/teamgray",item_name={text:"Team Play",color:red,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'teamItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]

execute if score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!teamMode] hotbar.2 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/void_teamgray",item_name={text:"YOU ARE ALONE",color:gray,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'teamItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
