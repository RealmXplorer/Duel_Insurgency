execute if entity @s[tag=givenCredits] run function du-in:lobby/actions/to_credits
clear @s minecraft:carrot_on_a_stick[custom_model_data=1008]
item replace entity @s inventory.8 with minecraft:carrot_on_a_stick[custom_model_data=1008,custom_name='{"text":"Credits","color":"blue","bold":true,"italic":false}',lore=['{"text":"Click to go to Credits!","color":"dark_purple"}']]
tag @s add givenCredits