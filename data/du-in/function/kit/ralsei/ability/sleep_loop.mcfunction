scoreboard players set #sleep running 1
#Rage functions for all enraged players
execute as @a[tag=sleepDuration] at @s run function du-in:kit/ralsei/ability/sleep

#Continue timer if another player has rage
execute if entity @a[tag=sleepDuration] run return run schedule function du-in:kit/ralsei/ability/sleep_loop 1t replace
scoreboard players set #sleep running 0
