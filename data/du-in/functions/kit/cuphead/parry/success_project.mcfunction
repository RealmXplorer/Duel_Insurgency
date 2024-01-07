execute at @e[type=marker,tag=papyrusFind,tag=projectile,sort=nearest,distance=..4] run kill @e[type=armor_stand,tag=papyrusBone,distance=..3]

kill @e[tag=projectile,sort=nearest,limit=1]
kill @e[type=armor_stand,tag=asgoreFire,distance=..3.5]

playsound minecraft:cuphead.parry master @a ~ ~ ~ 1 1
effect give @s minecraft:levitation 1 10 true
effect give @s minecraft:resistance 2 2 true
effect give @s minecraft:fire_resistance 2 2 true
#clear @s warped_fungus_on_a_stick
scoreboard players add @s cardPower 5
scoreboard players set @s floatTimer 5
scoreboard players set @s parryTimer 5