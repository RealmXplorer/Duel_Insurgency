##GO BACK NOW IN SCHEDULED FUNCTION

execute as @a[gamemode=adventure,tag=parkour,x=628,y=5,z=-126,dx=33,dy=0,dz=-51] at @s run function du-in:lobby/parkour/checkpoint1

execute positioned 636 -31 -101 as @a[gamemode=adventure,tag=parkour,distance=..58] at @s if entity @s[y=-30,dy=0] run function du-in:lobby/parkour/lava

execute as @a[gamemode=adventure,tag=parkour] at @s if entity @s[x=680,y=-29,z=-76,dx=-60,dy=0,dz=12] run tp @s 636 -26 -74 -90 0

execute positioned 641 -27 -103 as @a[distance=..5,gamemode=adventure] at @s if entity @s[y=-26,dy=0] run function du-in:lobby/parkour/checkpoint3

execute positioned 658 24 -34 as @a[distance=..12,y=24,gamemode=adventure] run tp @s 675 -43 -176

execute positioned 611.52 -37.00 -187.56 as @a[distance=..5,y=-37,gamemode=adventure] run tp @s 715 1.18750 -157.480 -143 -0.5

execute positioned 641 -31.00 -103 as @a[distance=..5,y=-26,dy=0,gamemode=adventure] run tp @s 715 1.18750 -157.480 -143 -0.5

#Cave room
execute as @a[x=628,y=4,z=-178,dx=33,dy=0,dz=-51,gamemode=adventure] run tp @s 643 6 -150 0 0

#Copper room
execute as @a[x=640,y=2,z=-95,dx=-14,dy=0,dz=-29,gamemode=adventure] run function du-in:lobby/parkour/copper
execute as @a[x=626,y=2,z=-95,dx=36,dy=0,dz=-8,gamemode=adventure] run function du-in:lobby/parkour/copper
execute as @a[x=626,y=2,z=-105,dx=36,dy=0,dz=-19,gamemode=adventure] run function du-in:lobby/parkour/copper
execute as @a[x=642,y=2,z=-95,dx=20,dy=0,dz=-29,gamemode=adventure] run function du-in:lobby/parkour/copper

#642 2 -95 662 2 -124

#626 2 -105 662 2 -124

#626 8 -95 662 6 -103

#640 2 -95 626 8 -124

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