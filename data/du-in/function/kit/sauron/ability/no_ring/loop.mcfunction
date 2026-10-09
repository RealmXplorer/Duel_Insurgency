scoreboard players set #seen running 1
#Rage functions for all enraged players
execute as @a[tag=seenDuration] at @s run function du-in:kit/sauron/ability/no_ring/timer

#Continue timer if another player has rage
execute if entity @a[tag=seenDuration] run return run schedule function du-in:kit/sauron/ability/no_ring/loop 1t replace
scoreboard players set #seen running 0