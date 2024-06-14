clear @s minecraft:carrot_on_a_stick
tag @s add asgoreTrident
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:trident[custom_name='{"text":"Asgore\'s Trident","color":"gold","bold":true}',lore=['{"text":"Wait, how did he get this?","color":"dark_purple","bold":true}'],max_damage=2,attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:5.5,operation:"add_value",slot:"mainhand"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:-2.35,operation:"add_value",slot:"mainhand"}],show_in_tooltip:true}] 1
playsound minecraft:jack_horner.bag voice @a ~ ~ ~ 1 1
tag @s add hornerWeapon
tag @s add magicBag