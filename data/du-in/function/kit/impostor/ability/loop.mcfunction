scoreboard players set #meetingSpot running 1
#Rage functions for all enraged players
execute as @e[type=marker,tag=meetingSpot] at @s run function du-in:kit/impostor/ability/meeting_spot

#Continue timer if another player has rage
execute if entity @e[type=marker,tag=meetingSpot] run return run schedule function du-in:kit/impostor/ability/loop 1t replace
scoreboard players set #meetingSpot running 0