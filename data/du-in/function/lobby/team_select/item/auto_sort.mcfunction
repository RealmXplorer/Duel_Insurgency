execute if entity @s[tag=givenSort] run tag @s add sort
clear @s minecraft:carrot_on_a_stick[item_model="du-in:lobby/auto_sort"]
item replace entity @s[tag=teamMode] hotbar.1 with minecraft:carrot_on_a_stick[item_model="du-in:lobby/auto_sort",item_name={text:"Auto Sort Teams",color:gray,bold:true},lore=[{text:"Right click to automatically sort teams!",color:dark_purple}],custom_data={du-in:'sortItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
tag @s add givenSort

#gamemode=!creative,tag=!playing,