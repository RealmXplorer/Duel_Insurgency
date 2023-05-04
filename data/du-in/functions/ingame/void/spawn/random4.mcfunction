scoreboard players add #main gonerChance 1

execute if predicate du-in:chance/half_chance if score #main gonerChance matches ..1 run function du-in:ingame/void/spawn/ear2
execute if predicate du-in:chance/half_chance if score #main gonerChance matches 2 run function du-in:ingame/void/spawn/eye2
execute if predicate du-in:chance/half_chance if score #main gonerChance matches 3.. run function du-in:ingame/void/spawn/mouth2

execute if score #main gonerChance matches 4.. run scoreboard players set #main gonerChance 0