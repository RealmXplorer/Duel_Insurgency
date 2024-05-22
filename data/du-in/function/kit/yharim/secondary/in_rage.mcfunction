scoreboard players remove @s yharimRageDuration 1

particle minecraft:flame ~ ~1 ~ 0.25 1 0.25 0 5 force

execute if entity @s[scores={yharimRageDuration=..0}] run function du-in:kit/yharim/secondary/end_rage