execute unless entity @s[scores={zombSkin=1..2}] run playsound minecraft:entity.zombie.ambient voice @a ~ ~ ~ 1000 1
execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.ambient voice @a ~ ~ ~ 1000 1
execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.ambient voice @a ~ ~ ~ 1000 1
