execute if entity @s unless score @s golemSkin matches 2 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={golemSkin=2}] run playsound minecraft:terraria.golhit master @a ~ ~ ~ 2 1 1
scoreboard players reset @s hit