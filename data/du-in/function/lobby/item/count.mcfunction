clear @s minecraft:carrot_on_a_stick[custom_data={du-in:'countItem'}]

execute unless score #main mapCountdown matches ..20 if score #main mapCountdown matches 1.. run item replace entity @s[tag=!countStop] hotbar.0 with minecraft:carrot_on_a_stick[custom_data={du-in:'countItem'},item_model="du-in:lobby/pause",custom_name='{"text":"Pause countdown","color":"red","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}']]


#TEAMPLAY NOT ACTIVE#
execute unless score #main mapCountdown matches ..20 if score #main mapCountdown matches 1.. run item replace entity @s[tag=countStop] hotbar.0 with minecraft:carrot_on_a_stick[custom_data={du-in:'countItem'},item_model="du-in:lobby/resume",custom_name='{"text":"Resume countdown","color":"green","bold":true,"italic":false}',lore=['{"text":"Right click to use!","color":"dark_purple"}']]