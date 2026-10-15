##OLD
#execute store result score #main gonerChance run random value 1..2
# execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches ..1 run function du-in:void/spawn/ear
# execute if predicate du-in:chance/quarter_chance if score #main gonerChance matches 2.. run function du-in:void/spawn/eye

#execute if score #main gonerChance matches 3.. run scoreboard players set #main gonerChance 0

##NEW
execute store result score #main gonerChance run random value 1..2
execute if score #main gonerChance matches 1 run return run function du-in:void/spawn/ear
function du-in:void/spawn/eye