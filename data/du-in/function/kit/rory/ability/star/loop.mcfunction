scoreboard players set #roryStar running 1
#Rage functions for all enraged players
execute as @e[type=armor_stand,tag=roryAbility] at @s run function du-in:kit/rory/ability/star/timer

#Continue timer if another player has rage
execute if entity @e[type=armor_stand,tag=roryAbility] run return run schedule function du-in:kit/rory/ability/star/loop 1t replace
scoreboard players set #roryStar running 0