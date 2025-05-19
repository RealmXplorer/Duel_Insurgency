execute unless entity @s[scores={creepSkin=1..}] run playsound minecraft:entity.creeper.death voice @a ~ ~ ~ 3 1
execute if entity @s[scores={creepSkin=1}] run playsound minecraft:gingerbread.death voice @a ~ ~ ~ 3 1

tag @s remove cooldown
scoreboard players reset @s creeperTimer