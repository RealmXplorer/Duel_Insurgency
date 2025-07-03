execute if entity @s[tag=givenCredits] run function du-in:lobby/actions/to_credits
clear @s minecraft:carrot_on_a_stick[item_model="filled_map"]
item replace entity @s inventory.8 with minecraft:carrot_on_a_stick[item_model="filled_map",item_name={text:"Credits",color:blue,bold:true},lore=[{text:"Click to go to Credits!",color:dark_purple}],consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
tag @s add givenCredits

#,consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}