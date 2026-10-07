#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Run kit-specific functions in "(kit)/events/kill"
execute at @s run function du-in:kit/all/reset/find_kit with storage du-in:main player

function du-in:kit/all/attribute/reset


scoreboard players reset @s kit