#Test Impostor Meeting Spot
execute unless block ~ ~-1 ~ #du-in:zomb_invalid run return run function du-in:kit/all/ability/titles/ground

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run return run function du-in:kit/all/ability/titles/ground
execute if block ~ ~ ~ #minecraft:liquid rotated as @s run return run function du-in:kit/all/ability/titles/ground

#If Valid spot
function du-in:kit/impostor/ability/default_init