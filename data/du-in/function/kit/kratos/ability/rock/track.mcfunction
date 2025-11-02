#Timer
execute as @e[tag=kratosRock,scores={kratosTimer=0..}] at @s run function du-in:kit/kratos/ability/rock/timer
# tp @e[type=minecraft:block_display,tag=kratosRock] @n[type=salmon,tag=kratosRock,distance=..2]
tp @e[type=minecraft:block_display,tag=kratosRock] @n[type=salmon,tag=kratosRock]