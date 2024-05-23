execute unless entity @s[scores={slimeSkin=1..}] run item replace entity @s[tag=!magma] hotbar.0 with slime_ball[custom_name='{"text":"Slime","color":"green","bold":true}',lore=['{"text":"Slime"}'],enchantments={levels:{"minecraft:knockback":1}},enchantment_glint_override=false,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1
execute unless entity @s[scores={slimeSkin=1..}] run item replace entity @s[tag=magma] hotbar.0 with minecraft:magma_cream[custom_name='{"text":"Slime (With Fire)","color":"red","bold":true}',lore=['{"text":"Slime"}'],enchantments={levels:{"minecraft:fire_aspect":1}},enchantment_glint_override=false,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

item replace entity @s[tag=!magma,scores={slimeSkin=1}] hotbar.0 with slime_ball[custom_name='{"text":"Marshmallow","color":"green","bold":true}',lore=['{"text":"Slimer"}'],enchantments={levels:{"minecraft:knockback":1}},enchantment_glint_override=false,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false},custom_model_data=100] 1
item replace entity @s[tag=magma,scores={slimeSkin=1}] hotbar.0 with minecraft:magma_cream[custom_name='{"text":"Burnt Marshmallow","color":"red","bold":true}',lore=['{"text":"Stay Puft"}'],enchantments={levels:{"minecraft:fire_aspect":1}},enchantment_glint_override=false,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false},custom_model_data=100] 1
