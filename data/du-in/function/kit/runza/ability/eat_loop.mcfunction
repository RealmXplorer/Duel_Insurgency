scoreboard players set #runza running 1
#Rage functions for all enraged players
execute as @a[tag=notEaten] at @s run function du-in:kit/runza/ability/the_hunger

#Continue timer if another player has rage
execute if entity @a[tag=notEaten] run return run schedule function du-in:kit/runza/ability/eat_loop 1t replace
scoreboard players set #runza running 0