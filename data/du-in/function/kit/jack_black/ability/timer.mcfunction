#Tracks if player should be riding chicken.
scoreboard players remove @s jockeyTimer 1

execute at @s run function du-in:kit/jack_black/ability/ride_chicken with storage du-in:main player

execute if entity @s[scores={jockeyTimer=..0}] run ride @s dismount
execute if entity @s[scores={jockeyTimer=..0}] run scoreboard players reset @s jockeyTimer