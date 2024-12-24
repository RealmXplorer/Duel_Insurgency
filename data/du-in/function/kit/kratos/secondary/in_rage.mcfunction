scoreboard players remove @s kratosRageDuration 1

particle minecraft:flame ~ ~1 ~ 0.25 1 0.25 0 5 force

execute if entity @s[scores={kratosRageDuration=..0}] run function du-in:kit/kratos/secondary/end_rage