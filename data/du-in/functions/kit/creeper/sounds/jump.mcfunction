execute unless entity @s[scores={creepSkin=1..}] run playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 0.2 1.75
execute if entity @s[scores={creepSkin=1}] run playsound minecraft:gingerbread.voice master @a ~ ~ ~ 0.2 0.75
scoreboard players reset @s jump
