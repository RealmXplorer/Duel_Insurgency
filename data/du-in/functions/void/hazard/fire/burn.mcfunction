execute at @e[type=marker,tag=flamePillarX] run particle minecraft:flame ~ ~ ~ 1.2 0.2 0.1 0 50
execute at @e[type=marker,tag=flamePillarZ] run particle minecraft:flame ~ ~ ~ 0.1 0.2 1.2 0 50
execute at @e[type=minecraft:block_display,tag=flamePillar] as @a[gamemode=adventure,distance=..2] run damage @s 5 minecraft:in_fire
