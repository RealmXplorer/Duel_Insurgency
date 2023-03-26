scoreboard players add #main gonerChance 1

execute if score #main gonerChance matches ..1 run function du-in:ingame/void/spawn/ear
execute if score #main gonerChance matches 2 run function du-in:ingame/void/spawn/eye
execute if score #main gonerChance matches 3.. run function du-in:ingame/void/spawn/mouth

execute if score #main gonerChance matches 4.. run scoreboard players set #main gonerChance 0