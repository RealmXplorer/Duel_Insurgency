#Freddy's player timer
scoreboard players remove @s lightTimer 1

execute if entity @s[scores={lightTimer=..0}] run function du-in:kit/freddy/ability/end