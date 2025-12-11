#Invisibility timer
scoreboard players remove @s pawbertTimer 1

execute if entity @s[scores={pawbertTimer=..0}] run function du-in:kit/pawbert/ability/end