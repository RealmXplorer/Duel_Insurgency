execute unless score @s golemSkin matches 2 run playsound minecraft:entity.iron_golem.hurt voice @a ~ ~ ~ 2 1 1
execute if entity @s[scores={golemSkin=2}] run playsound minecraft:terraria.golhit voice @a ~ ~ ~ 2 1 1
