execute unless entity @s[scores={creepSkin=1..}] run item replace entity @s hotbar.0 with minecraft:wooden_axe[custom_name='{"text":"Strike","color":"gray","bold":true}',custom_model_data=100,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:5.25,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2.65,operation:"add_value"}],show_in_tooltip:true}] 1
execute if entity @s[scores={creepSkin=1}] run item replace entity @s hotbar.0 with minecraft:wooden_axe[custom_name='{"text":"Gingerbread Axe","color":"gray","bold":true}',custom_model_data=101,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:5.25,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2.65,operation:"add_value"}],show_in_tooltip:true}] 1

#Old Attack Speed: -3