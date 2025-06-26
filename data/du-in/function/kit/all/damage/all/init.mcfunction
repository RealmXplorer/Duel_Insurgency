advancement revoke @s only du-in:utility/hit_all

#Saber / Hit sounds#
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s[tag=playing] run function du-in:kit/all/damage/all/find_kit with storage du-in:main player