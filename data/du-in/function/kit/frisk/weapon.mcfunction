execute unless entity @s[scores={friskSkin=1..}] run item replace entity @s hotbar.0 with minecraft:stick[custom_name='{"text":"Stick","color":"white","bold":true}',custom_model_data=100,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:3.25,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:true}] 1
execute if entity @s[scores={friskSkin=1}] run item replace entity @s hotbar.0 with minecraft:stick[custom_name='{"text":"Sword","color":"white","bold":true}',custom_model_data=102,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:3.25,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:true}] 1
execute if entity @s[scores={friskSkin=2}] run item replace entity @s hotbar.0 with minecraft:stick[custom_name='{"text":"The Crucifrisk","color":"white","bold":true}',custom_model_data=103,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:3.25,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:true}] 1