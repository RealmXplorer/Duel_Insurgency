scoreboard players remove @s kratosTimer 1
particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0 1
particle block_crumble{block_state:"minecraft:packed_mud"} ~ ~ ~ 0.25 0 0.25 1 3 normal

execute unless entity @a[tag=void] as @a[gamemode=adventure,distance=..1.5] unless score @s team = @n[type=salmon,tag=kratosRock,distance=..1.5] team unless score @s player = @n[type=salmon,tag=kratosRock,distance=..1.5] player run function du-in:kit/kratos/ability/rock/damage
execute if entity @a[tag=void] as @e[type=skeleton,tag=gonerThing,distance=..1.5] run function du-in:kit/kratos/ability/rock/damage

execute if entity @s[scores={kratosTimer=..0}] run function du-in:kit/kratos/ability/rock/kill