scoreboard players set #asgoreFire running 1
#Rage functions for all enraged players
execute as @e[type=armor_stand,tag=asgoreFire] at @s run function du-in:kit/asgore/ability/fire_wall

#Continue timer if another player has rage
execute if entity @e[type=armor_stand,tag=asgoreFire] run return run schedule function du-in:kit/asgore/ability/fire_loop 1t replace
scoreboard players set #asgoreFire running 0