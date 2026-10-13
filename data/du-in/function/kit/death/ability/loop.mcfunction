scoreboard players set #deathFire running 1
#Rage functions for all enraged players
execute as @e[type=block_display,tag=flame] at @s run function du-in:kit/death/ability/timer

#Continue timer if another player has rage
execute if entity @e[type=block_display,tag=flame] run return run schedule function du-in:kit/death/ability/loop 1t replace
scoreboard players set #deathFire running 0