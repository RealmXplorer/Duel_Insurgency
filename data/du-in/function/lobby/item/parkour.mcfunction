#clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'parkourItem'}]

clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'parkourItem'}]

# execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/next",item_name={text:"Parkour",color:blue,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'parkourItem'}]
# execute if score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/void_next",item_name={text:"NO ESCAPE",color:dark_gray,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'parkourItem'}]

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/next",item_name={text:"Parkour",color:blue,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'parkourItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/void_next",item_name={text:"NO ESCAPE",color:dark_gray,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'parkourItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]