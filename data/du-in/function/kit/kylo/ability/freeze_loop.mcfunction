scoreboard players set #freeze running 1
#Rage functions for all enraged players
execute as @a[tag=kyloHit] at @s run function du-in:kit/kylo/ability/freeze

#Continue timer if another player has rage
execute if entity @a[tag=kyloHit] run return run schedule function du-in:kit/kylo/ability/freeze_loop 1t replace
scoreboard players set #freeze running 0