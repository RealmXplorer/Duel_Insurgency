execute unless entity @s[scores={steveSkin=3..4}] run playsound minecraft:player.voice master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={steveSkin=3}] run playsound minecraft:goner.steve.voice master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={steveSkin=4}] run playsound minecraft:terraria.playhit master @a ~ ~ ~ 2 1 1
scoreboard players reset @s hit