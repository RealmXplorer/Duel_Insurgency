execute if entity @s[tag=givenRandKit] run function du-in:lobby/kitmenu/select/random_legend

item replace entity @s[tag=kitMenu] inventory.19 with minecraft:barrier[custom_model_data=106,custom_name='{"text":"Mystery Legendary Kit","color":"blue","bold":true,"italic":false}']
tag @s add givenRandKit