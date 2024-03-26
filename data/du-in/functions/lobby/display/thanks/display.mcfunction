#THANKSGIVING
execute if score #main gamemodeID matches 1 run clone 627 21 32 635 28 40 -987 12 513
execute if score #main gamemodeID matches 2 run clone 627 21 41 635 28 49 -987 12 513
execute if score #main gamemodeID matches 3 run clone 627 21 50 635 28 58 -987 12 513
execute if score #main gamemodeID matches 4 run clone 627 21 59 635 28 67 -987 12 513
execute if score #main gamemodeID matches 5 run clone 627 21 68 635 28 76 -987 12 513

execute positioned -987 12 513 run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 10
execute positioned -987 12 513 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 10
