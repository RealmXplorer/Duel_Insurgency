#HALLOWEEN GAMEMODE DISPLAY#
execute if score #main gamemode matches 1 run clone 627 13 32 635 20 40 -987 12 513
execute if score #main gamemode matches 2 run clone 627 13 41 635 20 49 -987 12 513
execute if score #main gamemode matches 3 run clone 627 13 50 635 20 58 -987 12 513
execute if score #main gamemode matches 4 run clone 627 13 59 635 20 67 -987 12 513
execute if score #main gamemode matches 5 run clone 627 13 68 635 20 76 -987 12 513

execute positioned -987 12 513 run playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 10 .75