execute if entity @s[tag=givenQuery] run function du-in:lobby/actions/team_query
clear @s minecraft:carrot_on_a_stick[item_model="snowball"]
item replace entity @s[tag=teamMode] hotbar.4 with minecraft:carrot_on_a_stick[item_model="snowball",custom_name='{"text":"Team Query","color":"gray","bold":true,"italic":false}',lore=['{"text":"Right click to see teams!","color":"dark_purple"}'],custom_data={du-in:'queryItem'}]
tag @s add givenQuery

#gamemode=!creative,tag=!playing,