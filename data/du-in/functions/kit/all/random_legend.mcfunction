execute store result score @s kit run random value 1000..1005

execute if entity @s[scores={kit=1004}] run function du-in:kit/all/random_legend

execute if entity @s[predicate=du-in:chance/saul_chance,tag=!playing] run scoreboard players set @s kit 2015
execute if entity @s[predicate=du-in:chance/chungus_chance,tag=!playing] run scoreboard players set @s kit 42069
tag @s remove randomLeg