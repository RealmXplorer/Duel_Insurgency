execute unless entity @s[scores={friskSkin=1..}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"B.Scotch Pie","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Disables your and enemy ","color":"dark_gray"}','{"text":"attacks and strengthens","color":"dark_gray"}','{"text":"teammates","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=114]
execute if entity @s[scores={friskSkin=1}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Defend","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Disables enemy ","color":"dark_gray"}','{"text":"attacks ","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=415]
execute if entity @s[scores={friskSkin=2}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"The Power of Christ","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Disables enemy ","color":"dark_gray"}','{"text":"attacks ","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=133]
