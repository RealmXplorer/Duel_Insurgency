scoreboard players remove @s[scores={classSwapTimer=0..}] classSwapTimer 1

execute if entity @s[scores={classSwapTimer=..0},tag=!lobby] run function du-in:kit/all/secondary/return
scoreboard players reset @s[scores={classSwapTimer=..0}] classSwapTimer
