execute if entity @s[tag=givenRed] run function du-in:lobby/actions/pick_red
tag @s remove givenBlue
clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'redItem'}]
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run item replace entity @s[tag=!team1] hotbar.3 with minecraft:carrot_on_a_stick[item_model="red_wool",custom_name='{"text":"Join Red","color":"red","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'redItem'}]
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run item replace entity @s[tag=team1] hotbar.3 with minecraft:carrot_on_a_stick[item_model="red_wool",custom_name='{"text":"Join Red","color":"red","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'redItem'},enchantment_glint_override=true]

execute if score #main lobbyTheme matches 1 run item replace entity @s[tag=!team1] hotbar.3 with minecraft:carrot_on_a_stick[item_model="orange_wool",custom_name='{"text":"Join Ghouls","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'redItem'}]
execute if score #main lobbyTheme matches 1 run item replace entity @s[tag=team1] hotbar.3 with minecraft:carrot_on_a_stick[item_model="orange_wool",custom_name='{"text":"Join Ghouls","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'redItem'},enchantment_glint_override=true]

execute if score #main lobbyTheme matches 3 run item replace entity @s[tag=!team1] hotbar.3 with minecraft:carrot_on_a_stick[item_model="red_wool",custom_name='{"text":"Join Saints","color":"red","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'redItem'}]
execute if score #main lobbyTheme matches 3 run item replace entity @s[tag=team1] hotbar.3 with minecraft:carrot_on_a_stick[item_model="red_wool",custom_name='{"text":"Join Saints","color":"red","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'redItem'},enchantment_glint_override=true]

tag @s add givenRed