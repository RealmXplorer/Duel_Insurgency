attribute @s minecraft:attack_damage base set 1

##DATAPACK 6.0

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

# Find player
execute at @s run function du-in:kit/all/attribute/find_kit with storage du-in:main player