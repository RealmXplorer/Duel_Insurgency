kill @e[tag=projectile,sort=nearest,limit=1]
effect give @e[type=skeleton,tag=gonerThing,distance=0.05..3,sort=nearest,limit=1] slowness 1 100 true
damage @e[type=skeleton,tag=gonerThing,distance=0.05..3,sort=nearest,limit=1] 3

playsound minecraft:cuphead.parry master @a ~ ~ ~ 1 1
effect give @s minecraft:levitation 1 10 true
effect give @s minecraft:resistance 2 2 true
effect give @s minecraft:fire_resistance 2 2 true
#clear @s warped_fungus_on_a_stick
scoreboard players add @s cardPower 5
scoreboard players set @s floatTimer 7
scoreboard players set @s parryTimer 60