#clear @s #du-in:secondary
execute unless entity @s[scores={steveSkin=3..4}] unless entity @s[scores={steveSkin=6}] run item replace entity @s hotbar.1 with minecraft:bow[item_name={text:"Makeshift Bow",color:gray,bold:true},unbreakable={}] 1
execute if entity @s[scores={steveSkin=3}] run item replace entity @s hotbar.1 with minecraft:bow[item_name={text:"[REDACTED] Bow",color:gray,bold:true},unbreakable={},item_model="du-in:other/gonerbow"] 1
execute if entity @s[scores={steveSkin=4}] run item replace entity @s hotbar.1 with minecraft:bow[item_name={text:"Wooden Bow",color:gray,bold:true},unbreakable={},item_model="du-in:other/tbow"] 1
execute if entity @s[scores={steveSkin=6}] run item replace entity @s hotbar.1 with minecraft:bow[item_name={text:"Watergun",color:gray,bold:true},unbreakable={},item_model="du-in:other/watergun"] 1
