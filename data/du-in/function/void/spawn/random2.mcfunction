##OLD
execute store result score #main gonerChance run random value 1..3

execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches ..1 run function du-in:void/spawn/ear2
execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches 2 run function du-in:void/spawn/eye
execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches 3.. run function du-in:void/spawn/mouth

##NEW
# execute store result score #main gonerChance run random value 1..3
# execute if score #main gonerChance matches 1 run return run function du-in:void/spawn/ear2
# execute if score #main gonerChance matches 2 run return run function du-in:void/spawn/eye
# function du-in:void/spawn/mouth