#Tracks if player should be riding chicken.
scoreboard players remove @s jockeyTimer 1

execute if entity @s[scores={jockeyTimer=..0}] run scoreboard players reset @s jockeyTimer