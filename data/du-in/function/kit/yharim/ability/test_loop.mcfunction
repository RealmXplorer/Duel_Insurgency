scoreboard players set #yharimAbility running 1
#Rage functions for all enraged players
execute as @a[tag=yharimAbility] at @s run function du-in:kit/yharim/ability/timer

#Continue timer if another player has rage
execute if entity @a[tag=yharimAbility] run return run schedule function du-in:kit/yharim/ability/test_loop 1t replace
scoreboard players set #yharimAbility running 0