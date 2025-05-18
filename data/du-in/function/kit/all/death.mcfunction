#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s[tag=playing] run function du-in:kit/all/death/find_kit with storage du-in:main player

execute if entity @s[tag=hasRing] as @r run function du-in:kit/sauron/ring/give_ring