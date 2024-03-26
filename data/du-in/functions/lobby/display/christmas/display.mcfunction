#CHRISTMAS GAMEMODE DISPLAY#
execute if score #main gamemode matches 1 run clone 627 29 32 635 36 40 -987 12 513
execute if score #main gamemode matches 2 run clone 627 29 41 635 36 49 -987 12 513
execute if score #main gamemode matches 3 run clone 627 29 50 635 36 58 -987 12 513
execute if score #main gamemode matches 4 run clone 627 29 59 635 36 67 -987 12 513
execute if score #main gamemode matches 5 run clone 627 29 68 635 36 76 -987 12 513

execute positioned -987 12 513 run playsound minecraft:krampus.jingle master @a ~ ~ ~ 10