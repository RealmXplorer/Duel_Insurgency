execute if entity @s[tag=givenQuery] run function du-in:lobby/actions/team_query
clear @s minecraft:carrot_on_a_stick[item_model="snowball"]
item replace entity @s[tag=teamMode] hotbar.4 with minecraft:carrot_on_a_stick[item_model="snowball",item_name={text:"Team Query",color:gray,bold:true},lore=[{text:"Right click to see teams!",color:dark_purple}],custom_data={du-in:'queryItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
tag @s add givenQuery

#gamemode=!creative,tag=!playing,