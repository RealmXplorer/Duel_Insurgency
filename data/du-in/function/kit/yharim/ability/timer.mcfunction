scoreboard players remove @s yharimTimer 1
particle minecraft:crit ~ ~ ~ 0.5 1 0.5 .5 10
execute if entity @s[scores={yharimTimer=..0}] run function du-in:kit/yharim/ability/timer_reset