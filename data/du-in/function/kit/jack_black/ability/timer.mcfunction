#Tracks if player should be riding chicken.
scoreboard players remove @s jockeyTimer 1

#Set current player to this player
# execute if entity @s[scores={jockeyTimer=1..}] store result storage du-in:main player.current int 1 run scoreboard players get @s player
# execute if entity @s[scores={jockeyTimer=1..}] at @s run function du-in:kit/jack_black/ability/ride_chicken with storage du-in:main player

execute if entity @s[tag=jockeyDuration] store result storage du-in:main player.current int 1 run scoreboard players get @s player
execute if entity @s[tag=jockeyDuration] at @s run function du-in:kit/jack_black/ability/ride_chicken with storage du-in:main player

#Dismount chicken
#execute unless entity @s[scores={jockeyTimer=..2}] run ride @s dismount

#End Ability
execute unless entity @s[scores={jockeyTimer=1..}] run tag @s remove jockeyDuration
execute unless entity @s[scores={jockeyTimer=1..}] run scoreboard players reset @s jockeyTimer
