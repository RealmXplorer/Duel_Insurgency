particle dust 1 1 1 1 ~ ~1 ~ 0 0 0 1 1
tag @s add villagerUse
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ positioned ^ ^ ^1 positioned ~ ~1.35 ~ as @a[tag=playing,gamemode=!spectator,distance=.75..5,tag=!villagerHit,tag=!teamDead,limit=1,sort=furthest,tag=!villagerUse] at @s run function du-in:kit/villager/raycast/true
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @a[tag=playing,gamemode=!spectator,distance=5.25..,tag=!teamDead] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function du-in:kit/all/ability/far
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @a[tag=playing,gamemode=!spectator,distance=5.25..,tag=!teamDead] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function du-in:kit/villager/raycast/init
tag @s remove villagerUse