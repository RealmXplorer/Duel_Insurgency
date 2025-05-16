execute if entity @e[tag=projectile,tag=!grave,distance=..2] run kill @s
execute unless entity @e[type=minecraft:falling_block,tag=grave,distance=..2] run kill @s[type=interaction,tag=grave]