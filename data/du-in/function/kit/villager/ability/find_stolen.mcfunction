##DATAPACK 6.0
#Set current player to this player
#execute store result storage du-in:main player.stolen int 1 run scoreboard players get @s player

#Find stolen character
#execute at @s run function du-in:kit/villager/ability/find_stolen_kit with storage du-in:main player
