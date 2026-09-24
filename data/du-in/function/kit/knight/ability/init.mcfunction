#Validate blocks
execute if block ~ ~-1 ~ #du-in:sans_valid run return run function du-in:kit/all/ability/titles/air

execute unless block ~ ~-1 ~ #du-in:sans_valid rotated as @s run return run function du-in:kit/all/ability/titles/air
execute unless block ~ ~ ~ #du-in:sans_valid rotated as @s run return run function du-in:kit/all/ability/titles/air

execute unless blocks ~ ~ ~ ~ ~.5 ~ ~ ~-.5 ~ all run return run function du-in:kit/all/ability/titles/air

#If Valid
function du-in:kit/knight/ability/default_init