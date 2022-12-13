#HALLOWEEN GAMEMODE DISPLAY#
execute if score #gamemode gamemodeID matches 1 run clone 605 9 62 613 16 70 -987 12 513
execute if score #gamemode gamemodeID matches 2 run clone 594 9 74 602 16 82 -987 12 513
execute if score #gamemode gamemodeID matches 3 run clone 594 9 38 602 16 46 -987 12 513
execute if score #gamemode gamemodeID matches 4 run clone 583 9 74 591 16 82 -987 12 513
execute if score #gamemode gamemodeID matches 5 run clone 583 5 26 591 11 34 -987 12 513
execute if score #gamemode gamemodeID matches 6 run clone 572 9 61 580 16 69 -987 12 513

execute at @a run playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 10 .75