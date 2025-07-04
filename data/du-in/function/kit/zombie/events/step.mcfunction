execute unless entity @s[scores={zombSkin=1..2}] run playsound minecraft:entity.zombie.step master @a ~ ~ ~ 0.1 1
execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.step master @a ~ ~ ~ 0.1 1
execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.step master @a ~ ~ ~ 0.1 1
#scoreboard players reset @s step
#scoreboard players reset @s sprint