execute store result score @s kit run random value 1000..1005

execute if entity @s[scores={kit=1000},tag=!saacUnlocked] run function du-in:kit/all/random_legend
execute if entity @s[scores={kit=1001},tag=!pazUnlocked] run function du-in:kit/all/random_legend
execute if entity @s[scores={kit=1002},tag=!jermaUnlocked] run function du-in:kit/all/random_legend
execute if entity @s[scores={kit=1003},tag=!impostUnlocked] run function du-in:kit/all/random_legend
execute if entity @s[scores={kit=1004}] run function du-in:kit/all/random_legend
execute if entity @s[scores={kit=1005},tag=!runzaUnlocked] run function du-in:kit/all/random_legend

execute if entity @s[predicate=du-in:chance/saul_chance,tag=!playing] run scoreboard players set @s kit 2015
execute if entity @s[predicate=du-in:chance/chungus_chance,tag=!playing] run scoreboard players set @s kit 42069
tag @s remove randomLeg