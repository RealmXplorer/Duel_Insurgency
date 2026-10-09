scoreboard players set #sab running 1
#Rage functions for all enraged players
execute as @a[scores={sabotageTimer=0..}] at @s run function du-in:kit/nick/ability/sabotage/timer

#Continue timer if another player has rage
execute if entity @a[scores={sabotageTimer=0..}] run return run schedule function du-in:kit/nick/ability/sab_loop 1t replace
scoreboard players set #sab running 0