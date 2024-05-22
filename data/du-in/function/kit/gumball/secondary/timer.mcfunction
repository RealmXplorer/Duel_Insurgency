scoreboard players remove @s[scores={gumSwapTimer=0..}] gumSwapTimer 1

execute if entity @s[scores={gumSwapTimer=..0},tag=!lobby] run function du-in:kit/all/secondary/return
scoreboard players reset @s[scores={gumSwapTimer=..0}] gumSwapTimer
