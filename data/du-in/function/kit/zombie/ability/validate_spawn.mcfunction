
#Zombie Spawnpoint Validity Checker#
execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run return run function du-in:kit/all/ability/titles/ground
execute if block ~ ~ ~ #du-in:zomb_invalid_air rotated as @s run return run function du-in:kit/all/ability/titles/ground
execute if entity @s[tag=teamMode] if entity @e[type=marker,tag=gameObject,distance=..10] rotated as @s run return run function du-in:kit/all/ability/titles/objective
execute if entity @s[tag=kothIngame] if entity @e[type=interaction,tag=gameObject,distance=..10] rotated as @s run return run function du-in:kit/all/ability/titles/objective
execute if blocks ~ ~ ~ ~ ~.5 ~ ~ ~-.5 ~ all run return run function du-in:kit/all/ability/titles/ground

#If Valid
function du-in:kit/zombie/ability/set_spawn