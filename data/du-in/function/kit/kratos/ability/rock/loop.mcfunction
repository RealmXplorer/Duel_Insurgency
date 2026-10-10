scoreboard players set #rock running 1
#Rage functions for all enraged players
execute as @e[tag=kratosRock,scores={kratosTimer=0..}] at @s run function du-in:kit/kratos/ability/rock/timer
# tp @e[type=minecraft:block_display,tag=kratosRock] @n[type=salmon,tag=kratosRock,distance=..2]
tp @e[type=minecraft:block_display,tag=kratosRock] @n[type=salmon,tag=kratosRock]

#Continue timer if another player has rage
execute if entity @e[type=salmon,tag=kratosRock] run return run schedule function du-in:kit/kratos/ability/rock/loop 1t replace
scoreboard players set #rock running 0