scoreboard players set #kyloPOS running 1
#Rage functions for all enraged players
execute as @e[type=marker,tag=kyloHitPos,tag=set] at @s run function du-in:kit/kylo/ability/marker

#Continue timer if another player has rage
execute if entity @e[type=marker,tag=kyloHitPos,tag=set] run return run schedule function du-in:kit/kylo/ability/pos_loop 1t replace
scoreboard players set #kyloPOS running 0