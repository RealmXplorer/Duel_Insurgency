
#Check to see if armor stand is separated from grave#
execute if entity @s[tag=grave] run function du-in:kit/zombie/ability/check

#Non-Villager functions
execute if entity @s[tag=!stolen] run function du-in:kit/zombie/constant

#Zombie timer
execute if entity @s[scores={zombieTimer=0..}] run function du-in:kit/zombie/ability/timer

#Zombie Spawnpoint Validity Checker#
execute unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove badBlock

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #du-in:zomb_invalid_air rotated as @s run tag @s add badBlock

execute if entity @s[tag=teamMode] if entity @e[type=marker,tag=gameObject,distance=..10] rotated as @s run tag @s add badBlock

execute if entity @s[tag=kothIngame] if entity @e[type=interaction,tag=gameObject,distance=..10] rotated as @s run tag @s add badBlock

execute if blocks ~ ~ ~ ~ ~.5 ~ ~ ~-.5 ~ all run tag @s add badBlock
