scoreboard players set #jevilNeo running 1
#Rage functions for all enraged players
execute as @e[type=block_display,tag=jevilDuration] at @s run function du-in:kit/jevil/neo_chaos/beam

#Continue timer if another player has rage
execute if entity @e[type=block_display,tag=jevilDuration] run return run schedule function du-in:kit/jevil/neo_chaos/beam_loop 1t replace
scoreboard players set #jevilNeo running 0