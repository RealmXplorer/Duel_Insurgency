scoreboard players set #delay running 1
#Rage functions for all enraged players
execute as @a[scores={abilityDelay=0..}] at @s run function du-in:kit/all/ability/delay/timer

#Continue timer if another player has rage
execute if entity @a[scores={abilityDelay=0..}] run return run schedule function du-in:kit/all/ability/delay/loop 1t replace
scoreboard players set #delay running 0