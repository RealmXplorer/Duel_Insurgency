scoreboard players set #freddyLight running 1
#Rage functions for all enraged players
execute as @e[type=marker,tag=light] at @s run function du-in:kit/freddy/ability/light/timer


#Continue timer if another player has rage
execute if entity @e[type=marker,tag=light] run return run schedule function du-in:kit/freddy/ability/light/loop 1t replace
scoreboard players set #freddyLight running 0