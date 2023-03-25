execute store result score @s kit run scoreboard players get @s random
execute if entity @s[predicate=du-in:saul_chance,tag=!playing] run scoreboard players set @s kit 2015
execute if entity @s[predicate=du-in:chungus_chance,tag=!playing] run scoreboard players set @s kit 42069
tag @s remove random