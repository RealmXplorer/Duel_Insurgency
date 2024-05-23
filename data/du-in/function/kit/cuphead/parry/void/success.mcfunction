kill @n[tag=projectile]
effect give @n[type=skeleton,tag=gonerThing,distance=0.05..3] slowness 1 100 true
damage @n[type=skeleton,tag=gonerThing,distance=0.05..3] 3

playsound minecraft:cuphead.parry master @a ~ ~ ~ 1 1
effect give @s minecraft:levitation 1 10 true
effect give @s minecraft:resistance 2 2 true
effect give @s minecraft:fire_resistance 2 2 true
scoreboard players add @s cardPower 5
scoreboard players set @s floatTimer 7
scoreboard players set @s parryTimer 60