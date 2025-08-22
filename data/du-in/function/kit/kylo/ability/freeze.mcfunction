#Teleport
execute as @n[type=marker,tag=kyloHitPos,distance=..3] at @s rotated as @s run tp @p[tag=kyloHit,scores={kyloTimer=1..}] @s

scoreboard players remove @s kyloTimer 1

particle minecraft:crit ~ ~1 ~ .3 .5 .3 0 10 force

#Kill marker at end of ability
execute if entity @s[scores={kyloTimer=..3}] run kill @n[type=marker,tag=kyloHitPos,distance=..2]

#End ability
tag @s[scores={kyloTimer=..0}] remove kyloHit
scoreboard players reset @s[scores={kyloTimer=..0}] kyloTimer
