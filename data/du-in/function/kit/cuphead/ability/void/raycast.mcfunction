particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force

execute as @e[type=skeleton,tag=gonerThing,distance=..1.25] run damage @s 4 minecraft:generic


execute positioned ^ ^ ^1 if entity @s[distance=..10] run function du-in:kit/cuphead/ability/void/raycast
