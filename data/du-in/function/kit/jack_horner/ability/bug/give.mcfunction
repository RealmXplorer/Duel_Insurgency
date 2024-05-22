clear @s minecraft:carrot_on_a_stick
tag @s add ethicalBug
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:stick[custom_name='{"text":"Ethical Bug","color":"gold","bold":true,"italic":false}',lore=['{"text":"Hit a player 3 times to remove!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I\'m beginning to think you don\'t","color":"dark_gray"}','{"text":"appreciate the value of a life. ","color":"dark_gray"}'],custom_model_data=106] 1
tag @s add magicBag
tag @s remove sabotaged
tag @s add hornerWeapon