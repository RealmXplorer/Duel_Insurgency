scoreboard players set #susieBuster running 1
#Rage functions for all enraged players
execute as @e[type=armor_stand,tag=susieAbility] at @s run function du-in:kit/susie/ability/buster/timer

#Continue timer if another player has rage
execute if entity @e[type=armor_stand,tag=susieAbility] run return run schedule function du-in:kit/susie/ability/buster/loop 1t replace
scoreboard players set #susieBuster running 0