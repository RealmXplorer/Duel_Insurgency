#particle minecraft:bubble_column_up ~ ~ ~ 1 1 1 1 100 force
particle minecraft:crit ~ ~.5 ~ 0 1 0 0.5 3 force @a

execute if entity @s[scores={yodaDamage=1..}] run function du-in:kit/yoda/ability/damage_absorbed
execute if entity @e[distance=0.05..4,tag=projectile] run function du-in:kit/yoda/ability/projectile_absorbed