execute if entity @s[tag=!crystalBall,tag=!phoenix] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Magic Nanny Bag","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Receive a random ","color":"dark_gray"}','{"text":"magical weapon. ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/bag"]
execute if entity @s[tag=crystalBall] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Crystal Orb","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Mark a player ","color":"dark_gray"}','{"text":"and gain speed. ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/crystal_ball"]
execute if entity @s[tag=phoenix] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"The Noble Phoenix","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Throw flames ","color":"dark_gray"}','{"text":"pretty boss right? ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/phoenix"]
