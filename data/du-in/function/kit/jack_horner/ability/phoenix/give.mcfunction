tag @s add phoenix
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"The Noble Phoenix","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Shoots a burst ","color":"dark_gray"}','{"text":"of fire. ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:other/phoenix"]

playsound minecraft:jack_horner.phoenix voice @a ~ ~ ~ 1 1
tag @s add magicBag