execute unless entity @s[scores={card=4}] run playsound minecraft:cuphead.parry.charge voice @a ~ ~ ~ 1
scoreboard players set @s card 4

item replace entity @s hotbar.8 with paper{display:{Name:'{"text":"Card","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Collect 5 to change ability!","color":"dark_purple","bold":true}']},weaponItem:1b,CustomModelData:100} 4
