
#Check to see if armor stand is separated from grave#
execute if entity @s[tag=grave] run function du-in:kit/zombie/ability/check

#Give Zombie ability#
#execute if entity @s[level=1] run function du-in:kit/zombie/ability/item

#Non-Villager functions
execute if entity @s[tag=!stolen] run function du-in:kit/zombie/constant

#Ability use# -Moved to kit/all/ability/activate
# execute if entity @s[tag=kitActions,tag=!flagGot,tag=!badBlock] at @s rotated as @s run function du-in:kit/zombie/ability/set_spawn

#Zombie timer
execute if entity @s[scores={zombieTimer=-99..}] run function du-in:kit/zombie/ability/timer

#Zombie Spawnpoint Validity Checker#
execute unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove badBlock

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #du-in:zomb_invalid_air rotated as @s run tag @s add badBlock

execute if entity @s[tag=teamMode] if entity @e[type=marker,tag=gameObject,distance=..10] rotated as @s run tag @s add badBlock
# execute if entity @s[tag=team2] if entity @e[type=marker,tag=redFlag,distance=..10] rotated as @s run tag @s add badBlock

execute if entity @s[tag=kothIngame] if entity @e[type=area_effect_cloud,tag=gameObject,distance=..10] rotated as @s run tag @s add badBlock

execute if blocks ~ ~ ~ ~ ~.5 ~ ~ ~-.5 ~ all run tag @s add badBlock
