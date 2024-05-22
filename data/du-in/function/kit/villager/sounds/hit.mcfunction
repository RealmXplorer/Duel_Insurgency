execute unless entity @s[scores={villSkin=1..}] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={villSkin=1}] run playsound minecraft:entity.vindicator.hurt master @a ~ ~ ~ 2 1 1
scoreboard players reset @s hit