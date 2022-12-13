execute if entity @s[tag=rageMeter] run playsound minecraft:yharim.rage.use master @a ~ ~ ~ 1 1 1
effect give @s[tag=rageMeter] minecraft:strength 2 1 true
effect give @s[tag=rageMeter] minecraft:speed 2 0 true
effect give @s[tag=rageMeter] minecraft:haste 2 0 true
execute if entity @s[tag=rageMeter] run particle minecraft:flame ~ ~1 ~ 1 1 1 0 20 force
execute if entity @s[tag=rageMeter] run particle minecraft:angry_villager ~ ~2 ~ 0.25 0 0.01 0 20 force
clear @s[tag=rageMeter] minecraft:warped_fungus_on_a_stick{CustomModelData:2007}
scoreboard players set @s[tag=rageMeter] yharimRage 0
tag @s[tag=rageMeter] remove rageMeter
tag @s remove secKitActions
