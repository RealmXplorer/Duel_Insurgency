scoreboard players remove @s jevilTimer 1

execute as @a[distance=.05..4,sort=nearest,tag=playing,gamemode=!spectator,tag=!teamDead] run damage @s 6 magic by @p[scores={kit=38,jevilScythe=0..}]

execute if entity @s[scores={jevilTimer=..0}] run kill @s