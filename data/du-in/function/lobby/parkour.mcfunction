##GO BACK NOW IN SCHEDULED FUNCTION

#Cave room
execute as @a[gamemode=adventure,tag=parkour,x=628,y=5,z=-126,dx=33,dy=0,dz=-51] at @s run function du-in:lobby/parkour/checkpoint1

#checkpoint 1
execute as @a[x=651,y=13,z=-126,dx=-2,dy=3,dz=-1,gamemode=adventure] unless entity @s[scores={checkpoint=1..}] run scoreboard players set @s checkpoint 1

#Copper room
execute as @a[x=640,y=2,z=-95,dx=-14,dy=0,dz=-29,gamemode=adventure] run function du-in:lobby/parkour/copper
execute as @a[x=626,y=2,z=-95,dx=36,dy=0,dz=-8,gamemode=adventure] run function du-in:lobby/parkour/copper
execute as @a[x=626,y=2,z=-105,dx=36,dy=0,dz=-19,gamemode=adventure] run function du-in:lobby/parkour/copper
execute as @a[x=642,y=2,z=-95,dx=20,dy=0,dz=-29,gamemode=adventure] run function du-in:lobby/parkour/copper

#The Pit
execute positioned 641 -27 -103 as @a[distance=..5,gamemode=adventure] at @s if entity @s[y=-26,dy=0] run function du-in:lobby/parkour/checkpoint3

#checkpoint 2
execute as @a[x=641,y=3,z=-103,dx=0,dy=6,dz=-1,gamemode=adventure] unless entity @s[scores={checkpoint=2..}] run scoreboard players set @s checkpoint 2

#Lava Checkpoint
execute as @a[x=636,y=-23,z=-103,dx=-6,dy=4,dz=-4,gamemode=adventure] unless entity @s[scores={checkpoint=3..}] run scoreboard players set @s checkpoint 3
execute positioned 636 -31 -101 as @a[gamemode=adventure,tag=parkour,distance=..58] at @s if entity @s[y=-30,dy=0] run function du-in:lobby/parkour/lava

#Lava Checkpoint 2
execute as @a[x=636,y=-26,z=-80,dx=0,dy=3,dz=4,gamemode=adventure] unless entity @s[scores={checkpoint=4..}] run scoreboard players set @s checkpoint 4
execute as @a[gamemode=adventure,tag=parkour] at @s if entity @s[x=680,y=-29,z=-76,dx=-60,dy=0,dz=12] run tp @s 636 -26 -74 -90 0

#End region
execute positioned 658 24 -34 as @a[distance=..12,y=24,gamemode=adventure] run tp @s 675 -43 -176

#End of Parkour
execute positioned 611.52 -37.00 -187.56 as @a[distance=..5,y=-37,gamemode=adventure] run tp @s 715 1.18750 -157.480 -143 -0.5
execute positioned 641 -31.00 -103 as @a[distance=..5,y=-26,dy=0,gamemode=adventure] run tp @s 715 1.18750 -157.480 -143 -0.5

#Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/parkour

# Parkour Actions #
execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/kit_use/parkour
