execute unless entity @s[scores={zombSkin=1..3}] run playsound minecraft:entity.zombie.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={zombSkin=3}] run playsound minecraft:terraria.zombkill master @a ~ ~ ~ 3 1