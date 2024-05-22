scoreboard players add @s yodaAbsorb 6
playsound minecraft:yharim.rage.ready master @a ~ ~ ~ 2 1.5
effect give @s slowness 1 1 true

execute as @e[distance=0.05..4,tag=projectile] run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 1 1 force
execute as @e[distance=0.05..4,tag=projectile] run kill @s
