#scoreboard players add #main gonerChance 1

execute store result score #main gonerChance run random value 1..3

execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches ..1 run function du-in:void/spawn/ear2
execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches 2 run function du-in:void/spawn/eye2
execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches 3.. run function du-in:void/spawn/mouth2

#execute if score #main gonerChance matches 4.. run scoreboard players set #main gonerChance 0