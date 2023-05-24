#Judgement Hall
#execute if score #main map matches 1 run playsound minecraft:ambient.caveamb ambient @s ~ ~ ~ 1 1 1

#Cliffside
execute if score #main map matches 1 run playsound minecraft:ambient.wind ambient @s ~ ~ ~ 2 1 1

#Clouds
execute if score #main map matches 2 run playsound minecraft:ambient.wind ambient @s ~ ~ ~ 2 1 1

#Two Fort
execute if score #main map matches 3 run function du-in:ingame/scheduled/ambience/desert

#Hypostyle
execute if score #main map matches 4 run function du-in:ingame/scheduled/ambience/forest

#Clouds
#execute if score #main map matches 5 run playsound minecraft:ambient.wind ambient @s ~ ~ ~ 2 1 1
###