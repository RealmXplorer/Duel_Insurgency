scoreboard players set #jevil running 1

#Rage functions for all enraged players
execute as @a[tag=jevilDuration] at @s run function du-in:kit/jevil/ability/spin

#Continue timer if another player has rage
execute if entity @a[tag=jevilDuration] run return run schedule function du-in:kit/jevil/ability/spin_loop 1t replace
scoreboard players set #jevil running 0
