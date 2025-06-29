scoreboard players remove @s kratosTimer 1
particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0 1
particle block_crumble{block_state:"minecraft:packed_mud"} ~ ~ ~ 0.25 0 0.25 1 3 normal
#execute as @a[gamemode=adventure,distance=..0.75] unless score @s team = @n[type=salmon,tag=kratosRock] team unless score @s player = @n[type=salmon,tag=kratosRock] player run damage @s 20 arrow by @n[type=salmon,tag=kratosRock]
#execute as @a[gamemode=adventure,distance=0.76..1.5] unless score @s team = @n[type=salmon,tag=kratosRock] team unless score @s player = @n[type=salmon,tag=kratosRock] player run damage @s 16 arrow by @n[type=salmon,tag=kratosRock]

execute unless entity @a[tag=void] as @a[gamemode=adventure,distance=..1.5] unless score @s team = @n[type=salmon,tag=kratosRock] team unless score @s player = @n[type=salmon,tag=kratosRock] player run function du-in:kit/kratos/ability/rock/damage
execute if entity @a[tag=void] as @e[type=skeleton,tag=gonerThing,distance=..1.5] run function du-in:kit/kratos/ability/rock/damage

#tp @e[type=minecraft:block_display,tag=kratosRock] @n[type=salmon,tag=kratosRock]

execute if entity @s[scores={kratosTimer=..0}] run function du-in:kit/kratos/ability/rock/kill