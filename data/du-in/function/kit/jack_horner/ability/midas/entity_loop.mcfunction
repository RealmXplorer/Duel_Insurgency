scoreboard players set #midasEntity running 1

#Rage functions for all enraged players
execute as @e[type=#du-in:midas,tag=gold,scores={goldTimer=1..}] at @s run function du-in:kit/jack_horner/ability/midas/timer

#Continue timer if another player has rage
execute if entity @e[type=#du-in:midas,tag=gold,scores={goldTimer=1..}] run return run schedule function du-in:kit/jack_horner/ability/midas/entity_loop 1t replace
scoreboard players set #midasEntity running 0