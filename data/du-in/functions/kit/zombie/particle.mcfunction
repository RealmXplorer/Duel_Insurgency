particle minecraft:block dirt ~ ~ ~ 0.3 0 0.3 1 50 force
execute unless entity @s[scores={zombSkin=1..}] run playsound minecraft:entity.zombie.hurt master @a ~ ~ ~ 100 1
playsound minecraft:block.grass.break master @a ~ ~ ~ 100 .7
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 100 1
execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.hurt master @a ~ ~ ~ 100 1
execute if entity @s[scores={zombSkin=3}] run playsound minecraft:terraria.zombhit master @a ~ ~ ~ 100 1