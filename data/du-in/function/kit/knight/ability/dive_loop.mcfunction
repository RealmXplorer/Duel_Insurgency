

scoreboard players set #desolateDive running 1
#Rage functions for all enraged players
execute as @e[type=armor_stand,tag=desolateDive] at @s run function du-in:kit/knight/ability/dive

#Continue timer if another player has rage
execute if entity @e[type=armor_stand,tag=desolateDive] run return run schedule function du-in:kit/knight/ability/dive_loop 1t replace
scoreboard players set #desolateDive running 0