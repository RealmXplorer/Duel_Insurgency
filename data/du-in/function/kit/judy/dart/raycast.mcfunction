particle minecraft:crit ~ ~1 ~ 0 0 0 0 1 force


execute as @a[gamemode=!spectator,tag=playing,distance=..1.25,sort=nearest,limit=1] at @s run function du-in:kit/judy/ability/hit

execute positioned ^ ^ ^1 if entity @s[distance=..20] unless entity @a[gamemode=!spectator,tag=playing,distance=..1.25,tag=judySleep] if block ~ ~ ~ #du-in:sans_valid run function du-in:kit/judy/ability/raycast
