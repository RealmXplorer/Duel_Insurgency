#clear @s #du-in:secondary
execute unless entity @s[scores={steveSkin=3..4}] run item replace entity @s hotbar.1 with minecraft:bow{display:{Name:'{"text":"Makeshift Bow","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,weaponItem:1b} 1
execute if entity @s[scores={steveSkin=3}] run item replace entity @s hotbar.1 with minecraft:bow{display:{Name:'{"text":"[REDACTED] Bow","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:101,weaponItem:1b} 1
execute if entity @s[scores={steveSkin=4}] run item replace entity @s hotbar.1 with minecraft:bow{display:{Name:'{"text":"Wooden Bow","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:102,weaponItem:1b} 1
