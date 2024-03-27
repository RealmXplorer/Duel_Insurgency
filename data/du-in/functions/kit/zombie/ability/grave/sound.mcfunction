#When Grave is used to respawn, play sound
execute unless entity @s[scores={zombSkin=1..}] run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.ambient master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=3}] run playsound minecraft:terraria.zombamb master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=4}] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=4}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100000 0.1 1
execute if entity @s[scores={zombSkin=4}] run playsound minecraft:soundeffect.alive master @a ~ ~ ~ 1 1
