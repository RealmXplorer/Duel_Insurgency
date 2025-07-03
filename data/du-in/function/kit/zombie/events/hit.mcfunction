execute unless entity @s[scores={zombSkin=1..3}] run playsound minecraft:entity.zombie.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={zombSkin=3}] run playsound minecraft:terraria.zombhit master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 2 1 1
# scoreboard players reset @s hit