#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Run kit-specific functions in "(kit)/events/kill"
function du-in:kit/all/game_start/find_kit with storage du-in:main player