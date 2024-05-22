scoreboard players remove @s[scores={pussSwapTimer=0..}] pussSwapTimer 1

execute if entity @s[scores={pussSwapTimer=..0},tag=!lobby] run function du-in:kit/all/secondary/return
scoreboard players reset @s[scores={pussSwapTimer=..0}] pussSwapTimer
