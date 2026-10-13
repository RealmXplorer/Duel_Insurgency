scoreboard players set #freddyDark running 1
#Rage functions for all enraged players
execute as @a[tag=freddyDark] at @s run function du-in:kit/freddy/ability/dark/timer


#Continue timer if another player has rage
execute if entity @a[tag=freddyDark] run return run schedule function du-in:kit/freddy/ability/dark/loop 1t replace
scoreboard players set #freddyDark running 0