scoreboard players remove @s willoBulletTravel 1

tp @s ^ ^ ^0.65

#Hasn't hit wood
execute if entity @s[tag=!woodPass] at @e[type=marker,tag=willoBullet] run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if entity @s[tag=!woodPass] at @e[type=marker,tag=willoBullet] run particle dust_color_transition{from_color:[1.000,1.000,1.000],to_color:[0.412,0.412,0.412],scale:1} ~ ~ ~ 0 0 0 0 1 normal

#Hit Wood
execute if entity @s[tag=woodPass] run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if entity @s[tag=woodPass] run particle dust_color_transition{from_color:[0.510,0.478,0.408],to_color:[0.141,0.141,0.137],scale:1} ~ ~ ~ 0 0 0 0 1 normal

execute if entity @s[tag=!woodPass] run playsound du-in:kit.willo.revolver_whizz player @a[tag=!willoShoot] ~ ~ ~ 0.5 1
execute if entity @s[tag=woodPass] run playsound du-in:kit.willo.revolver_whizz player @a[tag=!willoShoot] ~ ~ ~ 0.5 .75

#Damage
execute if entity @s[tag=!woodPass] as @e[type=husk,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function du-in:kit/willo/revolver/damage_no_pen
execute if entity @s[tag=woodPass] as @e[type=husk,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function du-in:kit/willo/revolver/damage_pen

#execute if entity @s[tag=!woodPass] at @s as @e[type=husk,distance=..1.25,tag=!willoShoot] run damage @s 5 minecraft:generic
#execute if entity @s[tag=woodPass] at @s as @e[type=husk,distance=..1.25,tag=!willoShoot] run damage @s 3 minecraft:generic

#execute if entity @s[tag=!void,tag=!woodPass] at @s as @a[distance=..1.25,tag=!willoShoot] run damage @s 5 minecraft:generic
#execute if entity @s[tag=!void,tag=woodPass] at @s as @a[distance=..1.25,tag=!willoShoot] run damage @s 3 minecraft:generic

#execute if entity @s[tag=void,tag=!woodPass] at @s as @e[type=skeleton,distance=..1.25] run damage @s 5 minecraft:generic
#execute if entity @s[tag=void,tag=woodPass] at @s as @e[type=skeleton,distance=..1.25] run damage @s 3 minecraft:generic

#execute if entity @s[tag=!woodPass] at @s as @e[type=husk,distance=..1.25,tag=!willoShoot] run say @s

execute if block ~ ~ ~ #mineable/pickaxe run tag @s add hitStone
execute if block ~ ~ ~ #mineable/axe run tag @s add hitWood
execute if block ~ ~ ~ #mineable/hoe run tag @s add hitLeaf
execute if block ~ ~ ~ #mineable/shovel run tag @s add hitDirt
execute if block ~ ~ ~ #minecraft:glass run tag @s add hitGlass

#Pass through leaves and glass
execute if entity @s[tag=hitLeaf] run function du-in:kit/willo/revolver/pen/leaf
execute if entity @s[tag=hitGlass] run function du-in:kit/willo/revolver/pen/glass

#Test Penetration
execute if entity @s[tag=hitStone] run function du-in:kit/willo/revolver/pen/stone
execute if entity @s[tag=hitDirt] run function du-in:kit/willo/revolver/pen/dirt
execute if entity @s[tag=hitWood] run function du-in:kit/willo/revolver/pen/wood

execute positioned ^ ^ ^0.65 if entity @s[scores={willoBulletTravel=1..}] run function du-in:kit/willo/revolver/marker_raycast

#execute positioned ^ ^ ^1 if entity @s[scores={willoBulletTravel=1..}] run function du-in:kit/willo/revolver/marker_raycast
execute if entity @s[scores={willoBulletTravel=..0}] run kill @s

#Recursion
#execute positioned ^ ^ ^1 if entity @s[tag=!hitStone,tag=!hitDirt,tag=!hitWood,distance=..30] run function du-in:kit/willo/revolver/raycast
