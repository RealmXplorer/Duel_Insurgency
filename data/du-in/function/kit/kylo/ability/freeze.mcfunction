#TEST THIS??
#execute rotated as @s[scores={kyloTimer=20}] run tp @n[type=marker,tag=kyloHitPos] ~ ~ ~ ~ ~
#execute rotated as @s[scores={kyloTimer=40}] run tp @n[type=marker,tag=kyloHitPos] ~ ~ ~ ~ ~

#execute as @n[type=marker,tag=kyloHitPos] at @s rotated as @s run tp @p[tag=kyloHit,scores={kyloTimer=..40}] @s
execute as @n[type=marker,tag=kyloHitPos] at @s rotated as @s run tp @p[tag=kyloHit,scores={kyloTimer=1..}] @s

scoreboard players remove @s kyloTimer 1

particle minecraft:crit ~ ~1 ~ .3 .5 .3 0 10 force

execute if entity @s[scores={kyloTimer=..3}] run kill @n[type=marker,tag=kyloHitPos]
tag @s[scores={kyloTimer=..0}] remove kyloHit
scoreboard players reset @s[scores={kyloTimer=..0}] kyloTimer
