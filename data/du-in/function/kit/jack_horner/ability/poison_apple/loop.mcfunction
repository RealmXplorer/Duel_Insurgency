scoreboard players set #poisonApple running 1
#Rage functions for all enraged players
execute as @e[type=marker,tag=clairenField] at @s run function du-in:kit/clairen/ability/field

execute as @a[tag=inField] run function du-in:kit/clairen/ability/field/effects/field_effects

#Continue timer if another player has rage
execute if entity @e[type=marker,tag=poisonApple] run return run schedule function du-in:kit/clairen/ability/field/loop 1t replace
scoreboard players set #poisonApple running 0