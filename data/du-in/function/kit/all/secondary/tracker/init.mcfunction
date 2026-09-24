clear @s gunpowder

##DATAPACK 6.0
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
function du-in:kit/all/secondary/tracker/find_kit with storage du-in:main player
