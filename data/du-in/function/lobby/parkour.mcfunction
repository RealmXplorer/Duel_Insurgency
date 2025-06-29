##GO BACK NOW IN SCHEDULED FUNCTION

execute as @a[gamemode=adventure,tag=parkour,x=628,y=5,z=-126,dx=33,dy=0,dz=-51] at @s run function du-in:lobby/parkour/checkpoint1

execute positioned 636 -31 -101 as @a[gamemode=adventure,tag=parkour,distance=..58] at @s if entity @s[y=-30,dy=0] run function du-in:lobby/parkour/lava

execute as @a[gamemode=adventure,tag=parkour] at @s if entity @s[x=680,y=-29,z=-76,dx=-60,dy=0,dz=12] run tp @s 636 -26 -74 -90 0

execute positioned 641 -27 -103 as @a[distance=..5,gamemode=adventure] at @s if entity @s[y=-26,dy=0] run function du-in:lobby/parkour/checkpoint3

execute positioned 658 24 -34 as @e[distance=..12,y=24] run tp @s 675 -43 -176

execute positioned 611.52 -37.00 -187.56 as @e[distance=..5,y=-37] run tp @s 715 1.18750 -157.480 -143 -0.5

#execute as @a[gamemode=adventure,tag=parkour] at @s if entity @s[x=662,y=6,z=-124,dx=32,dy=0,dz=-29] run tp @s 650 13 -125 0 0
#execute as @a[gamemode=adventure,tag=parkour] at @s if entity @s[x=662,y=6,z=-124,dx=-32,dy=0,dz=29] run tp @s 650 13 -125 0 0

# 662 6 -124
# 626 6 -95

# dx 32
# dz -29

#Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/parkour

# Parkour Actions #
execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/kit_use/parkour

#x=628
#y=5
#z=-126

#dz=51
#dx=33