#Gives tag "kitActions" when carrot on a stick is rightclicked
tag @s add kitActions

#Judy Inspire
execute as @a[scores={kit=35},tag=!inspireFull,tag=!stolen,gamemode=adventure,tag=playing] run function du-in:kit/judy/inspire_track

##DATAPACK 6.0
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s run function du-in:kit/all/ability/activate/find_kit with storage du-in:main player

scoreboard players reset @s kitUse