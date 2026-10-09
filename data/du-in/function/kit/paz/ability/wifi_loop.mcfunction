scoreboard players set #blake running 1
#Rage functions for all enraged players
execute as @a[tag=blakeDuration] at @s run function du-in:kit/paz/ability/rubberband

#Continue timer if another player has rage
execute if entity @a[tag=blakeDuration] run return run schedule function du-in:kit/paz/ability/wifi_loop 1t replace
scoreboard players set #blake running 0