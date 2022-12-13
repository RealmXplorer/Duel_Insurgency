scoreboard players add @s prize 1
scoreboard players reset @s[scores={prize=15..}] prize

clear @s[nbt={Inventory:[{id:"minecraft:leather_boots"}]}] minecraft:leather_boots{prize:0}
item replace entity @s[scores={prize=2}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Blessed Feet","color":"gold","bold":true}',color:16711680},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[scores={prize=4}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Blessed Feet","color":"gold","bold":true}',color:16742144},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[scores={prize=6}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Blessed Feet","color":"gold","bold":true}',color:15073024},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[scores={prize=8}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Blessed Feet","color":"gold","bold":true}',color:1179392},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[scores={prize=10}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Blessed Feet","color":"gold","bold":true}',color:65527},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[scores={prize=12}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Blessed Feet","color":"gold","bold":true}',color:524543},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[scores={prize=14}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Blessed Feet","color":"gold","bold":true}',color:16711935},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
