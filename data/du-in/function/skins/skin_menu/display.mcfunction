clear @s carrot_on_a_stick[custom_data={du-in:'displayHead'}]
item replace entity @s[tag=shop] inventory.9 with minecraft:carrot_on_a_stick[custom_data={du-in:'displayHead'},custom_name='{"text":"Skins","color":"gold","bold":true,"italic":false}',item_model="du-in:lobby/crown"] 1

execute if entity @s[scores={kitUseThrow=1..}] run function du-in:other/clear_ground_items