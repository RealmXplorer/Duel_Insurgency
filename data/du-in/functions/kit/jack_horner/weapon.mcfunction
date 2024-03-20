#Weapon#
execute if entity @s[tag=!poisonApple,tag=!unicornBow,tag=!midasHand,tag=!asgoreTrident] run item replace entity @s hotbar.0 with minecraft:stone_axe[custom_name='{"text":"Excalibur!","color":"gray","bold":true,"italic":true}',lore=['{"text":"Yea, I couldn\'t get this rock off it","color":"dark_purple","bold":true}','{"text":"but still pretty cool right?","color":"dark_purple","bold":true}'],custom_model_data=103,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:5.25,operation:"add_value",uuid:[I;-1293091353,33440144,-1414395109,2068556263],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.5,operation:"add_value",uuid:[I;-1758261724,-1468379971,-1373001450,-217602478],slot:"mainhand"}],show_in_tooltip:false}] 1
execute if entity @s[tag=unicornBow] run item replace entity @s hotbar.0 with minecraft:crossbow[custom_name='{"text":"Unicorn Horn Crossbow","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to shoot!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Explode on ","color":"dark_gray"}','{"text":"enemy hit. ","color":"dark_gray"}'],charged_projectiles=[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}],custom_model_data=100] 1
execute if entity @s[tag=midasHand] run item replace entity @s hotbar.0 with minecraft:stick[custom_name='{"text":"Midas Touch","color":"gold","bold":true,"italic":false}',lore=['{"text":"Hit a player to use!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Turn an enemy player","color":"dark_gray"}','{"text":"into gold. ","color":"dark_gray"}'],custom_model_data=105] 1