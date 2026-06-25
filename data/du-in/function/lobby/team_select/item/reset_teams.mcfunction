#execute if entity @s[tag=givenClear] run function du-in:lobby/team_select/actions/reset_teams

#clear @s minecraft:carrot_on_a_stick[item_model="du-in:lobby/clear"]

item replace entity @s[tag=teamMode] hotbar.7 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/clear",item_name={text:"Clear Teams",color:gray,bold:true},lore=[{text:"Right click to clear teams!",color:dark_purple}],custom_data={du-in:'clearItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
tag @s add givenClear