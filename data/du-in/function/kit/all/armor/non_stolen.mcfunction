#ARMOR GIVING#
tag @s add armor

##DATAPACK 6.0
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s run function du-in:kit/all/armor/return/find_kit with storage du-in:main player