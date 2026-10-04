#Remove 1 step
scoreboard players remove @s starTravelTime 1

#Mark projectile as successfully started raycast (prevents retriggering for others)
tag @s remove unShot

#Move projectile
# tp @s ^ ^ ^0.05
tp @s ~ ~ ~

#Damage
#execute as @e[type=husk,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function du-in:kit/willo/revolver/damage_no_pen

execute if entity @s[tag=!void] as @a[tag=!starShoot,tag=playing,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function du-in:kit/willo/revolver/damage_no_pen

execute if entity @s[tag=void] as @e[type=skeleton,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function du-in:kit/willo/revolver/void/damage

#Old Willo functions. Will be removed.
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

#Step forward and recurv the raycast (continue the raycast if the projectile has travel time remaining)
execute positioned ^ ^ ^0.05 if entity @s[scores={starTravelTime=1..}] run function du-in:kit/rory/ability/armor_stand_raycast
#execute if entity @s[scores={starTravelTime=1..}] run function du-in:kit/rory/ability/armor_stand_raycast

execute if entity @s[scores={starTravelTime=..0}] run function du-in:kit/rory/ability/star_explode
