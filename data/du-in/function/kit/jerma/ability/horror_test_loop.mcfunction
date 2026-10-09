scoreboard players set #horror running 1
#Rage functions for all enraged players
execute as @a[tag=jermaDuration] at @s run function du-in:kit/jerma/ability/timer


#Continue timer if another player has rage
execute unless entity @a[tag=jermaDuration] run scoreboard players set #horror running 0
execute if entity @a[tag=jermaDuration] run schedule function du-in:kit/jerma/ability/horror_test_loop 1t replace