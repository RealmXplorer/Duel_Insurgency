scoreboard players set #yharimRage running 1
#Rage functions for all enraged players
execute as @a[tag=enraged] at @s run function du-in:kit/yharim/secondary/in_rage

#Continue timer if another player has rage
execute if entity @a[tag=enraged] run return run schedule function du-in:kit/yharim/secondary/test_loop 1t replace
scoreboard players set #yharimRage running 0