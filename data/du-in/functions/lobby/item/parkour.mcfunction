#execute if entity @s[tag=givenPark] run function du-in:lobby/actions/to_parkour
clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'parkourItem'}]
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[custom_model_data=1005,custom_name='{"text":"Parkour","color":"blue","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'parkourItem'}]
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[custom_model_data=1046,custom_name='{"text":"NO ESCAPE","color":"dark_gray","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}'],custom_data={du-in:'parkourItem'}]
#tag @s add givenPark

#[tag=!credits,gamemode=!creative,tag=!playing,tag=!working,tag=!subLobby]