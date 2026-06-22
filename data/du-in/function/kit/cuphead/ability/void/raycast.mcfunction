particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force

execute if entity @s[tag=!empower] as @e[type=skeleton,tag=gonerThing,distance=..1.25] run damage @s 5 minecraft:generic by @p[scores={kit=21}]
execute if entity @s[tag=empower] as @e[type=skeleton,tag=gonerThing,distance=..1.25] run damage @s 10 minecraft:generic by @p[scores={kit=21}]


execute positioned ^ ^ ^1 if entity @s[distance=..10] run function du-in:kit/cuphead/ability/void/raycast
