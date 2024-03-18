execute if entity @s[tag=givenRandKit] run function du-in:lobby/kitmenu/select/random

item replace entity @s[tag=kitMenu] inventory.19 with minecraft:barrier[custom_name='{"text":"Mystery Kit","color":"blue","bold":true,"italic":false}',custom_model_data=100]
tag @s add givenRandKit