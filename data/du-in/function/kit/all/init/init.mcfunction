# #Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

# #Run kit-specific functions in "(kit)/init"
execute at @s run function du-in:kit/all/init/find_kit with storage du-in:main player