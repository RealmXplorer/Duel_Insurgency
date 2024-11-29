execute if entity @s[tag=givenRandKit] run function du-in:lobby/kitmenu/select/random

item replace entity @s[tag=kitMenu] inventory.19 with minecraft:barrier[custom_name='{"text":"Mystery Kit","color":"blue","bold":true,"italic":false}',item_model="du-in:lobby/random"]
tag @s add givenRandKit