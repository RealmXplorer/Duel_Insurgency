execute if entity @s[tag=givenBlue] run function du-in:lobby/actions/pick_blue
tag @s remove givenRed
clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'blueItem'}]
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run item replace entity @s[tag=!team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="blue_wool",custom_name='{"text":"Join Blue","color":"blue","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'blueItem'}]
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run item replace entity @s[tag=team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="blue_wool",custom_name='{"text":"Join Blue","color":"blue","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'blueItem'},enchantment_glint_override=true]


execute if score #main lobbyTheme matches 1 run item replace entity @s[tag=!team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="purple_wool",custom_name='{"text":"Join Ghosts","color":"dark_purple","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'blueItem'}]
execute if score #main lobbyTheme matches 1 run item replace entity @s[tag=team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="purple_wool",custom_name='{"text":"Join Ghosts","color":"dark_purple","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'blueItem'},enchantment_glint_override=true]

execute if score #main lobbyTheme matches 3 run item replace entity @s[tag=!team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="green_wool",custom_name='{"text":"Join Elves","color":"dark_green","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'blueItem'}]
execute if score #main lobbyTheme matches 3 run item replace entity @s[tag=team2] hotbar.5 with minecraft:carrot_on_a_stick[item_model="green_wool",custom_name='{"text":"Join Elves","color":"dark_green","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'blueItem'},enchantment_glint_override=true]

tag @s add givenBlue