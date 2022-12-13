execute unless entity @s[scores={card=3}] run playsound minecraft:cuphead.parry.charge voice @a ~ ~ ~ 1
scoreboard players set @s card 3

item replace entity @s hotbar.8 with paper{weaponItem:1b,CustomModelData:100} 3
