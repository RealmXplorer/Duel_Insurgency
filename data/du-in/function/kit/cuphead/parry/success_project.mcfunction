execute at @n[type=marker,tag=papyrusFind,tag=projectile,distance=..4] run kill @e[type=armor_stand,tag=papyrusBone,distance=..3]

kill @n[tag=projectile,distance=..4]
kill @e[type=armor_stand,tag=asgoreFire,distance=..3.5]

playsound minecraft:cuphead.parry master @a ~ ~ ~ 1 1
particle explosion ~ ~-0.5 ~ 0 0 0 0 1
effect give @s minecraft:levitation 1 10 true
effect give @s minecraft:resistance 2 2 true
effect give @s minecraft:fire_resistance 2 2 true
#clear @s warped_fungus_on_a_stick
scoreboard players add @s cardPower 5
scoreboard players set @s floatTimer 5
scoreboard players set @s parryTimer 5