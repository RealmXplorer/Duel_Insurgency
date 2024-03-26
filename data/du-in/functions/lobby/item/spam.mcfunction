execute if entity @s[tag=givenSpam] run function du-in:lobby/actions/spam_mode
clear @s minecraft:cookie
execute unless score #main pylonsDestroyed matches 3 run item replace entity @s inventory.15 with minecraft:cookie[custom_name='{"text":"Spam mode","color":"light_purple","bold":true,"italic":false}',lore=['{"text":"Click to allow spam clicking!","color":"dark_purple"}']]
execute if score #main pylonsDestroyed matches 3 run item replace entity @s inventory.15 with minecraft:cookie[custom_model_data=100,custom_name='{"text":"MY REALITY","color":"light_purple","bold":true,"italic":false}',lore=['{"text":"NOWHERE TO GO BACK TO!","color":"dark_purple"}']]

tag @s add givenSpam

#[gamemode=!creative,tag=!playing,tag=!working]