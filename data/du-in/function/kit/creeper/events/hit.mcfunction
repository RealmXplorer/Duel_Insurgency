execute unless entity @s[scores={creepSkin=1..}] run playsound minecraft:entity.creeper.hurt voice @a ~ ~ ~ 2 1 1
execute if entity @s[scores={creepSkin=1}] run playsound minecraft:gingerbread.voice voice @a ~ ~ ~ 2 1 1
scoreboard players reset @s hit