execute unless entity @s[scores={gastSkin=1..}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Dimensional Shatter","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Shatter to gain","color":"dark_gray"}','{"text":"speed and invisibility, ","color":"dark_gray"}','{"text":"and return with strength boost","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/gaster"]
execute if entity @s[scores={gastSkin=1}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Apparition","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Shatter to gain","color":"dark_gray"}','{"text":"speed and invisibility, ","color":"dark_gray"}','{"text":"and return with strength boost","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/ghost"]
execute if entity @s[scores={gastSkin=2}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"[Hyperlink Blocked]","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Shatter to gain","color":"dark_gray"}','{"text":"speed and invisibility, ","color":"dark_gray"}','{"text":"and return with strength boost","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/phone"]