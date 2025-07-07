execute if entity @s[tag=givenBlue] run function du-in:lobby/team_select/actions/pick_blue
tag @s remove givenRed
clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'blueItem'}]
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run item replace entity @s[tag=!team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="blue_wool",item_name={text:"Join Blue",color:blue,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'blueItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run item replace entity @s[tag=team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="blue_wool",item_name={text:"Join Blue",color:blue,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'blueItem'},enchantment_glint_override=true,consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]


execute if score #main lobbyTheme matches 1 run item replace entity @s[tag=!team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="purple_wool",item_name={text:"Join Ghosts",color:dark_purple,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'blueItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
execute if score #main lobbyTheme matches 1 run item replace entity @s[tag=team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="purple_wool",item_name={text:"Join Ghosts",color:dark_purple,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'blueItem'},enchantment_glint_override=true,consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]

execute if score #main lobbyTheme matches 3 run item replace entity @s[tag=!team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="green_wool",item_name={text:"Join Elves",color:dark_green,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'blueItem'},consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]
execute if score #main lobbyTheme matches 3 run item replace entity @s[tag=team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="green_wool",item_name={text:"Join Elves",color:dark_green,bold:true},lore=[{text:"Right click to use!",color:dark_purple}],custom_data={du-in:'blueItem'},enchantment_glint_override=true,consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}]

tag @s add givenBlue

##,consumable={consume_seconds:0,animation:"none",sound:"block.candle.hit",has_consume_particles:false}