execute store result score @s kit run random value 1..30

execute if entity @s[predicate=du-in:chance/saul_chance,tag=!playing] run scoreboard players set @s kit 2015
execute if entity @s[predicate=du-in:chance/chungus_chance,tag=!playing] run scoreboard players set @s kit 42069
tag @s remove random

execute if entity @s[tag=playing] run function du-in:kit/all/attribute/set