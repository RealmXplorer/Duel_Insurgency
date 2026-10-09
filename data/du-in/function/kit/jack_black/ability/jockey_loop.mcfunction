scoreboard players set #jockey running 1
#Rage functions for all enraged players
execute as @a[tag=jockeyDuration] at @s run function du-in:kit/jack_black/ability/timer

#Continue timer if another player has rage
execute if entity @a[tag=jockeyDuration] run return run schedule function du-in:kit/jack_black/ability/jockey_loop 1t replace
scoreboard players set #jocket running 0