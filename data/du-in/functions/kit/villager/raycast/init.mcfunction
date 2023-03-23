particle dust 1 1 1 1 ~ ~1 ~ 0 0 0 1 1
tag @s add villagerUse
#execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ positioned ^ ^ ^1 positioned ~ ~1.35 ~ as @a[tag=playing,gamemode=!spectator,distance=.75..5,tag=!villagerHit,tag=!teamDead,limit=1,sort=furthest,tag=!villagerUse] at @s run function du-in:kit/villager/raycast/true
#execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @a[tag=playing,gamemode=!spectator,distance=5.25..,tag=!teamDead] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function du-in:kit/all/ability/far
#execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @a[tag=playing,gamemode=!spectator,distance=5.25..,tag=!teamDead] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function du-in:kit/villager/raycast/init

execute if entity @e[distance=..1] run say hit
execute unless entity @e[distance=..1] run say miss

#particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 20 force

#execute if entity @a[gamemode=!spectator,tag=playing,distance=..1] run function du-in:kit/jack_horner/ability/phoenix/hit

execute positioned ^ ^ ^0.1 if entity @s[distance=..5.25] unless entity @e[distance=..2] run function du-in:kit/villager/raycast/init
tag @s remove villagerUse
