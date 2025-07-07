stopsound @a voice

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player (if not stolen)
execute if entity @s[tag=!stolen] run function du-in:kit/all/win/find_kit with storage du-in:main player

#Run villager function if stolen.
execute if entity @s[tag=stolen] run function du-in:kit/villager/events/win