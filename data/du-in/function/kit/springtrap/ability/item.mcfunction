#Ability#

item replace entity @s[tag=!springLock,scores={springSkin=2}] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Clownlocks","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I will come back,","color":"dark_gray"}','{"text":"I always do...","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/clowntrap"]
item replace entity @s[tag=springLock,scores={springSkin=2}] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Clownlocks","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I will come back,","color":"dark_gray"}','{"text":"I always do...","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/clownlock"]


execute unless entity @s[scores={springSkin=2}] run item replace entity @s[tag=!springLock] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Springlocks","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I will come back,","color":"dark_gray"}','{"text":"I always do...","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/springtrap"]
execute unless entity @s[scores={springSkin=2}] run item replace entity @s[tag=springLock] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Springlocks","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I will come back,","color":"dark_gray"}','{"text":"I always do...","color":"dark_gray"}'],enchantment_glint_override=true,item_model="du-in:abilities/springlock"]