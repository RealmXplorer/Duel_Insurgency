

tag @s remove hitStone
tag @s remove hitWood
tag @s remove hitLeaf
tag @s remove hitGlass

#summon marker

#particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 1 force
particle dust_color_transition{from_color:[1.000,1.000,1.000],to_color:[0.412,0.412,0.412],scale:1} ~ ~ ~ 0 0 0 0 5 normal

#execute if entity @s[tag=!empower] as @a[tag=!inField,gamemode=!spectator,tag=playing,distance=..1.25,tag=!willoShoot] run damage @s 5 minecraft:generic
#execute if entity @s[tag=empower] as @a[tag=!inField,gamemode=!spectator,tag=playing,distance=..1.25,tag=!willoShoot] run damage @s 10 minecraft:generic

execute if entity @s[tag=!void] positioned ~ ~ ~ as @a[gamemode=!spectator,distance=..1.5,tag=!willoShoot] run playsound du-in:willo.revolver.whizz player @a ~ ~ ~ 1 .75
execute if entity @s[tag=!void] as @a[gamemode=!spectator,distance=..1.25,tag=!willoShoot] run damage @s 5 minecraft:generic

#Void
execute if entity @s[tag=void] as @e[distance=..1.25,type=skeleton] run damage @s 10 minecraft:generic

##TEST REMOVE
execute as @e[distance=..1.25] run damage @s 10 minecraft:generic

execute as @a[tag=inField,gamemode=!spectator,tag=playing,distance=..1.25] run playsound minecraft:clairen.deflect master @a ~ ~ ~ 1 1

#Hits block
execute if block ~ ~ ~ #mineable/pickaxe run tag @s add hitStone
execute if block ~ ~ ~ #mineable/axe run tag @s add hitWood
execute if block ~ ~ ~ #mineable/hoe run tag @s add hitLeaf
execute if block ~ ~ ~ #mineable/shovel run tag @s add hitDirt
execute if block ~ ~ ~ #minecraft:glass run tag @s add hitGlass

#Pass through leaves and glass
execute if entity @s[tag=hitLeaf] run function du-in:kit/willo/revolver/pen/leaf
execute if entity @s[tag=hitGlass] run function du-in:kit/willo/revolver/pen/glass

#Continue path
execute positioned ^ ^ ^1 if entity @s[tag=!hitStone,tag=!hitDirt,tag=!hitWood,distance=..30] run function du-in:kit/willo/revolver/raycast

#Test Penetration
execute if entity @s[tag=hitStone] run function du-in:kit/willo/revolver/pen/stone
execute if entity @s[tag=hitDirt] run function du-in:kit/willo/revolver/pen/dirt
execute if entity @s[tag=hitWood] run function du-in:kit/willo/revolver/pen/wood

tag @s remove willoShoot