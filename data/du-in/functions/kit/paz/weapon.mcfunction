execute unless entity @s[scores={weaponTier=1..}] run item replace entity @s hotbar.0 with minecraft:bone[custom_name='{"text":"Bronze Mic","color":"gray","bold":true,"italic":true}',custom_model_data=102,attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:3.25,operation:"add_value",uuid:[I;2064214019,646136323,-1880707802,1050924522],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:40,operation:"add_value",uuid:[I;-622910054,-790870669,-1771129311,460430924],slot:"mainhand"}],show_in_tooltip:false}] 1
execute if entity @s[scores={weaponTier=1}] run item replace entity @s hotbar.0 with minecraft:bone[custom_name='{"text":"Silver Mic","color":"gray","bold":true,"italic":true}',custom_model_data=103,attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:3.5,operation:"add_value",uuid:[I;2064214019,646136323,-1880707802,1050924522],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:40,operation:"add_value",uuid:[I;-622910054,-790870669,-1771129311,460430924],slot:"mainhand"}],show_in_tooltip:false}] 1
execute if entity @s[scores={weaponTier=2}] run item replace entity @s hotbar.0 with minecraft:bone[custom_name='{"text":"Gold Mic","color":"gray","bold":true,"italic":true}',custom_model_data=104,attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4,operation:"add_value",uuid:[I;2064214019,646136323,-1880707802,1050924522],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:40,operation:"add_value",uuid:[I;-622910054,-790870669,-1771129311,460430924],slot:"mainhand"}],show_in_tooltip:false}] 1
