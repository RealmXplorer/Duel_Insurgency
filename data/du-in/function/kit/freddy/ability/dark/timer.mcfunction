scoreboard players remove @s darkTimer 1

effect give @s darkness 1 1 true
effect give @s blindness 1 1 true
effect clear @s night_vision

execute if entity @s[scores={darkTimer=..0}] run function du-in:kit/freddy/ability/dark/end