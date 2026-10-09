scoreboard players set #float running 1
#Rage functions for all enraged players
execute as @a[scores={golemFloat=0..}] at @s run function du-in:kit/golem/ability/float

#Continue timer if another player has rage
execute if entity @a[scores={golemFloat=0..}] run return run schedule function du-in:kit/golem/ability/float_loop 1t replace
scoreboard players set #float running 1