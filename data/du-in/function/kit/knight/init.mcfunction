#execute if entity @s[tag=!stolen] run function du-in:kit/knight/constant

#Knight Validity Checker#
execute if block ~ ~-1 ~ #du-in:sans_valid run tag @s remove groundBlock

execute unless block ~ ~-1 ~ #du-in:sans_valid rotated as @s run tag @s add groundBlock
execute unless block ~ ~ ~ #du-in:sans_valid rotated as @s run tag @s add groundBlock

execute unless blocks ~ ~ ~ ~ ~.5 ~ ~ ~-.5 ~ all run tag @s add groundBlock