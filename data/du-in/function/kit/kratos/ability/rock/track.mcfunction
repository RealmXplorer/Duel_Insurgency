# #Set current player to this player
# execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

# #Find player
# execute at @s run function du-in:kit/all/ability/item/find_kit with storage du-in:main player

execute as @e[tag=kratosRock,scores={kratosTimer=0..}] at @s run function du-in:kit/kratos/ability/rock/timer
tp @e[type=minecraft:block_display,tag=kratosRock] @n[type=salmon,tag=kratosRock]