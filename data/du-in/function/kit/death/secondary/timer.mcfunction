scoreboard players remove @s[scores={deathSwapTimer=0..}] deathSwapTimer 1

execute if entity @s[scores={deathSwapTimer=..0},tag=!lobby] run function du-in:kit/all/secondary/return
scoreboard players reset @s[scores={deathSwapTimer=..0}] deathSwapTimer
