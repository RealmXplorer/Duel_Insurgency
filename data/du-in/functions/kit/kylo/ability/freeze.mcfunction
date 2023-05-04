execute rotated as @s[scores={kyloTimer=20}] run tp @e[type=marker,tag=kyloHitPos,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=kyloHitPos,sort=nearest,limit=1] at @s rotated as @s run tp @a[tag=kyloHit,limit=1,sort=nearest,scores={kyloTimer=..20}] @s

scoreboard players remove @s kyloTimer 1

#execute as @e[type=marker,tag=kyloHitPos,sort=nearest,limit=1] at @s rotated as @s run tp @a[tag=kyloHit,limit=1,sort=nearest,scores={kyloTimer=..30}] @s

particle minecraft:crit ~ ~1 ~ .3 .5 .3 0 10 force

execute if entity @s[scores={kyloTimer=..3}] run kill @e[type=marker,tag=kyloHitPos,limit=1,sort=nearest]
tag @s[scores={kyloTimer=..0}] remove kyloHit
scoreboard players reset @s[scores={kyloTimer=..0}] kyloTimer
