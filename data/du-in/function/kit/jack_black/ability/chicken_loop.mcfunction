scoreboard players set #chicken running 1
#Rage functions for all enraged players
execute as @e[type=chicken,tag=jockeyDuration] at @s run function du-in:kit/jack_black/ability/chicken

#Continue timer if another player has rage
execute if entity @e[type=chicken,tag=jockeyDuration] run return run schedule function du-in:kit/jack_black/ability/chicken_loop 1t replace
scoreboard players set #chicken running 0