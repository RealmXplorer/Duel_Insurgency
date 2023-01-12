execute unless entity @s[scores={card=3}] run playsound minecraft:cuphead.parry.charge voice @a ~ ~ ~ 1
scoreboard players set @s card 3

item replace entity @s hotbar.8 with paper{display:{Name:'{"text":"Card","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},weaponItem:1b,CustomModelData:100} 3
