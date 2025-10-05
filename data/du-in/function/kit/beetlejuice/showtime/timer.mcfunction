#Count down
scoreboard players remove @s showTimer 1

#Return to arena
execute if entity @s[scores={showTimer=..0}] run function du-in:kit/beetlejuice/showtime/return