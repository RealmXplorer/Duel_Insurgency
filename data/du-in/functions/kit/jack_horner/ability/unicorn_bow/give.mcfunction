clear @s minecraft:carrot_on_a_stick
tag @s add unicornBow
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:crossbow[custom_name='{"text":"Unicorn Horn Crossbow","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to shoot!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Explode on ","color":"dark_gray"}','{"text":"enemy hit. ","color":"dark_gray"}'],charged_projectiles=[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}],custom_model_data=100] 1

playsound minecraft:jack_horner.unicorn_horn hostile @a ~ ~ ~ 1 1
tag @s add hornerWeapon
tag @s add magicBag