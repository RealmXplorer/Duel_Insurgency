scoreboard players remove @s kratosTimer 1
#particle minecraft:flame ~ ~ ~ 0.5 1 0.5 .5 10
execute if entity @s[scores={kratosTimer=..0}] run function du-in:kit/kratos/ability/timer_reset