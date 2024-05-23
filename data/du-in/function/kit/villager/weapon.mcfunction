#Default Sword#
execute unless entity @s[scores={villSkin=1..}] run item replace entity @s[tag=!magma] hotbar.0 with stone_sword[custom_name='{"text":"Deal Breaker","color":"#1CA102","bold":true}',custom_model_data=107,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

#Illager Sword#
execute run item replace entity @s[scores={villSkin=1},tag=!magma] hotbar.0 with minecraft:stone_sword[custom_name='{"text":"Deal Breaker","color":"blue","bold":true}',custom_model_data=114,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

#Witch Sword#
execute run item replace entity @s[scores={villSkin=2},tag=!magma] hotbar.0 with minecraft:stone_sword[custom_name='{"text":"Deal Breaker","color":"#bc94f4","bold":true}',custom_model_data=124,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

#Puss Sword
execute if entity @s[scores={pussTimer=1..}] run function du-in:kit/puss/weapon

#Stolen Slime Sword#
item replace entity @s[tag=magma] hotbar.0 with stone_sword[custom_name='{"text":"Magma Blade","color":"#1CA102","bold":true}',custom_model_data=117,enchantments={levels:{"minecraft:fire_aspect":1}},unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1