#clear @s #du-in:secondary
execute unless entity @s[scores={steveSkin=3..4}] run item replace entity @s hotbar.1 with minecraft:bow[custom_name='{"text":"Makeshift Bow","color":"gray","bold":true}',unbreakable={show_in_tooltip:false}] 1
execute if entity @s[scores={steveSkin=3}] run item replace entity @s hotbar.1 with minecraft:bow[custom_name='{"text":"[REDACTED] Bow","color":"gray","bold":true}',unbreakable={show_in_tooltip:false},custom_model_data=101] 1
execute if entity @s[scores={steveSkin=4}] run item replace entity @s hotbar.1 with minecraft:bow[custom_name='{"text":"Wooden Bow","color":"gray","bold":true}',unbreakable={show_in_tooltip:false},custom_model_data=102] 1
