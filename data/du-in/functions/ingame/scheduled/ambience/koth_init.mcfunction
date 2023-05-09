#Ziggurat
execute if score #main map matches 1 run function du-in:ingame/scheduled/ambience/forest

#Nether has its own ambience based on its biome

#End
execute if score #main map matches 3 run playsound minecraft:ambient.wind ambient @s ~ ~ ~ 2 1 1

#Bowl is based on biome predicate.

#Moraband
execute if score #main map matches 5 run function du-in:ingame/scheduled/ambience/desert

#Dunesday
execute if score #main map matches 6 run function du-in:ingame/scheduled/ambience/desert

#Pride Rock
execute if score #main map matches 7 run function du-in:ingame/scheduled/ambience/desert

#Chancel
execute if score #main map matches 8 run playsound minecraft:ambient.wind ambient @s ~ ~ ~ 2 1 1
