execute if score #gamemode gamemodeID matches 1 run clone 605 9 98 613 16 106 -987 12 513
execute if score #gamemode gamemodeID matches 2 run clone 594 9 98 602 16 106 -987 12 513
execute if score #gamemode gamemodeID matches 3 run clone 572 5 15 580 11 23 -987 12 513
execute if score #gamemode gamemodeID matches 4 run clone 583 9 98 591 16 106 -987 12 513
execute if score #gamemode gamemodeID matches 5 run clone 583 5 15 591 11 23 -987 12 513
execute if score #gamemode gamemodeID matches 6 run clone 572 9 98 580 16 106 -987 12 513

execute at @a run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 10
execute at @a run playsound minecraft:entity.player.burp master @a ~ ~ ~ 10