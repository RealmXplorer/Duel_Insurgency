execute if entity @s[tag=givenRandom] run function du-in:lobby/actions/random_mode
clear @s minecraft:rabbit_foot
execute unless score #main pylonsDestroyed matches 3 run item replace entity @s inventory.11 with minecraft:rabbit_foot[item_model="du-in:lobby/random_on_death",custom_name='{"text":"Random kit on Death","color":"light_purple","bold":true,"italic":false}',lore=['{"text":"Click to respawn with random kit every life!","color":"dark_purple"}']]
execute if score #main pylonsDestroyed matches 3 run item replace entity @s inventory.11 with minecraft:rabbit_foot[item_model="du-in:lobby/void_random_death",custom_name='{"text":"DARKER","color":"light_purple","bold":true,"italic":false}',lore=['{"text":"MY EXPERIMENT IS NOT COMPLETE","color":"dark_purple"}']]

tag @s add givenRandom