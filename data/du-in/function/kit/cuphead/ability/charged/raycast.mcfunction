particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0 20 force

execute as @a[gamemode=!spectator,tag=playing,distance=..1.25] run damage @s 5 minecraft:generic



execute positioned ^ ^ ^1 if entity @s[distance=..15] run function du-in:kit/cuphead/ability/charged/raycast
