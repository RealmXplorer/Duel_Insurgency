execute if score #gamemode gamemodeID matches 1 run clone 583 12 26 591 19 34 -987 12 513
execute if score #gamemode gamemodeID matches 2 run clone 605 12 26 613 19 34 -987 12 513
execute if score #gamemode gamemodeID matches 3 run clone 572 12 26 580 19 34 -987 12 513
execute if score #gamemode gamemodeID matches 4 run clone 583 12 15 591 19 23 -987 12 513
execute if score #gamemode gamemodeID matches 5 run clone 572 12 15 580 19 23 -987 12 513
#execute if score #gamemode gamemodeID matches 6 run clone 572 9 98 580 16 106 -987 12 513

execute at @a run playsound minecraft:goner.mouth.spawn master @a ~ ~ ~ 10
#execute at @a run playsound minecraft:entity.player.burp master @a ~ ~ ~ 10