#Default Zombie Skin#
execute unless entity @s[scores={zombSkin=1..}] run item replace entity @s hotbar.0 with minecraft:wooden_sword[custom_name='{"text":"Undead Strike","color":"gray","bold":true}',item_model="du-in:weapons/zombie",unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:4.5,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value"}],show_in_tooltip:true}] 1
#Husk Sword#
item replace entity @s[scores={zombSkin=1}] hotbar.0 with minecraft:wooden_sword[custom_name='{"text":"Sword of Anubis","color":"gold","bold":true}',item_model="du-in:weapons/husksword",unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:4.5,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value"}],show_in_tooltip:true}] 1
#Drowned Sword#
item replace entity @s[scores={zombSkin=2}] hotbar.0 with minecraft:wooden_sword[custom_name='{"text":"Prismarine Sword","color":"aqua","bold":true}',item_model="du-in:weapons/prissword",unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:4.5,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value"}],show_in_tooltip:true}] 1
#Terraria Zombie Sword#
item replace entity @s[scores={zombSkin=3}] hotbar.0 with minecraft:wooden_sword[custom_name='{"text":"Zombie Arm","color":"gray","bold":true}',item_model="du-in:weapons/zombiearm",unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:4.5,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value"}],show_in_tooltip:true}] 1

item replace entity @s[scores={zombSkin=4}] hotbar.0 with minecraft:wooden_sword[custom_name='{"text":"Frankenstein\'s Coil","color":"gray","bold":true}',item_model="du-in:weapons/frankenstein",unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:4.5,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value"}],show_in_tooltip:true}] 1