particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0 1 force


execute as @e[tag=gonerThing,distance=..1.25,sort=nearest,limit=1] at @s run function du-in:kit/judy/ability/void/hit

execute positioned ^ ^ ^1 if entity @s[distance=..15] unless entity @e[tag=gonerThing,distance=..1.25,tag=judySleep] run function du-in:kit/judy/ability/raycast
