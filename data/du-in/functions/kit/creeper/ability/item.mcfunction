execute unless entity @s[scores={creepSkin=1..}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Detonate","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Explode.","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=103]
execute if entity @s[scores={creepSkin=1}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Cookie Bomb","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Explode.","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=303]