execute unless entity @s[scores={golemSkin=1..}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Iron Throw","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Throw enemies ","color":"dark_gray"}','{"text":"into the air ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="iron_ingot"]
execute if entity @s[scores={golemSkin=1}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Nutcrack","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Throw enemies ","color":"dark_gray"}','{"text":"into the air ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/nutcracker"]
execute if entity @s[scores={golemSkin=2}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Eye of Golem","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Throw enemies ","color":"dark_gray"}','{"text":"into the air ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/eye"]
execute if entity @s[scores={golemSkin=3}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Copper Throw","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Throw enemies ","color":"dark_gray"}','{"text":"into the air ","color":"dark_gray"}'],enchantment_glint_override=true,item_model="copper_ingot"]