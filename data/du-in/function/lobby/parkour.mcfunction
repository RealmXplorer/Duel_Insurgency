##GO BACK NOW IN SCHEDULED FUNCTION

#Cave room
execute if entity @s[x=628,y=5,z=-126,dx=33,dy=0,dz=-51] run function du-in:lobby/parkour/checkpoint/checkpoint1

#checkpoint 1
execute if entity @s[x=651,y=13,z=-126,dx=-2,dy=3,dz=-1] unless entity @s[scores={checkpoint=1..}] run scoreboard players set @s checkpoint 1

#Copper room
execute if entity @s[x=640,y=2,z=-95,dx=-14,dy=0,dz=-29] run function du-in:lobby/parkour/checkpoint/copper
execute if entity @s[x=626,y=2,z=-95,dx=36,dy=0,dz=-8] run function du-in:lobby/parkour/checkpoint/copper
execute if entity @s[x=626,y=2,z=-105,dx=36,dy=0,dz=-19] run function du-in:lobby/parkour/checkpoint/copper
execute if entity @s[x=642,y=2,z=-95,dx=20,dy=0,dz=-29] run function du-in:lobby/parkour/checkpoint/copper

#The Pit
execute positioned 641 -27 -103 if entity @s[y=-26,dy=0,distance=..5] run function du-in:lobby/parkour/checkpoint/checkpoint3

#checkpoint 2
execute if entity @s[x=641,y=3,z=-103,dx=0,dy=6,dz=-1] unless entity @s[scores={checkpoint=2..}] run scoreboard players set @s checkpoint 2
execute if entity @s[x=620,y=-28,z=-75,dx=60,dy=1,dz=-13] run tp @s 636 -26 -75 -90 0
execute if entity @s[x=602,y=-31,z=-143,dx=78,dy=1,dz=67] run tp @s 633 -23 -104 90 0

#Lava Checkpoint
execute if entity @s[x=636,y=-23,z=-103,dx=-6,dy=4,dz=-4] unless entity @s[scores={checkpoint=3..}] run scoreboard players set @s checkpoint 3
execute positioned 636 -31 -101 if entity @s[distance=..58,y=-30,dy=0] run function du-in:lobby/parkour/checkpoint/lava

#Lava Checkpoint 2
execute if entity @s[x=636,y=-26,z=-80,dx=0,dy=3,dz=4] unless entity @s[scores={checkpoint=4..}] run scoreboard players set @s checkpoint 4
execute if entity @s[x=620,y=-28,z=-75,dx=60,dy=1,dz=12] run tp @s 636 -26 -74 -90 0

#Lava Checkpoint 3
execute if entity @s[x=618,y=-19,z=-65,dx=2,dy=7,dz=-8] unless entity @s[scores={checkpoint=5..}] run scoreboard players set @s checkpoint 5
execute if entity @s[x=602,y=-27,z=-75,dx=13,dy=1,dz=12] run tp @s 617 -19 -69 90 0


#Forest Checkpoint
execute if entity @s[x=600,y=-9,z=-67,dx=-2,dy=5,dz=-5] unless entity @s[scores={checkpoint=6..}] run scoreboard players set @s checkpoint 6
execute if entity @s[x=581,y=-9,z=-63,dx=-50,dy=1,dz=-40] run tp @s 600 -9 -68
execute if entity @s[x=595,y=-9,z=-83,dx=-60,dy=1,dz=-44] run tp @s 600 -9 -68 130 0

#Mineshaft Checkpoint
execute if entity @s[x=600,y=32,z=-54,dx=-4,dy=5,dz=0] unless entity @s[scores={checkpoint=7..}] run scoreboard players set @s checkpoint 7
execute if entity @s[x=604,y=30,z=41,dx=-14,dy=-4,dz=-12] run tp @s 598 32 -53 0 0 

#Mineshaft checkpoint 2
execute if entity @s[x=600,y=32,z=-54,dx=-4,dy=5,dz=0] unless entity @s[scores={checkpoint=8..}] run scoreboard players set @s checkpoint 8
execute if entity @s[x=592,y=36,z=-39,dx=4,dy=4,dz=0] run tp @s 594 36 -37 0 0

#Mineshaft checkpoint 3
execute if entity @s[x=604,y=39,z=-21,dx=0,dy=-4,dz=4] unless entity @s[scores={checkpoint=9..}] run scoreboard players set @s checkpoint 9
execute if entity @s[x=605,y=34,z=-16,dx=9,dy=-2.8,dz=-18] run tp @s 601 36 -18 -100 0

#Stronghold
execute if entity @s[x=626,y=44,z=-32,dx=0,dy=4,dz=-4] unless entity @s[scores={checkpoint=10..}] run scoreboard players set @s checkpoint 10
execute if entity @s[x=652,y=42,z=-29,dx=-25,dy=-2,dz=-10] run tp @s 625 45 -33 -90 0


#End region
execute if entity @s[x=673,y=-47,z=-175,dx=3,dy=3,dz=3] unless entity @s[scores={checkpoint=11..}] run scoreboard players set @s checkpoint 11
execute positioned 658 24 -34 if entity @s[distance=..12,y=24] run tp @s 675 -43 -176
execute if entity @s[x=679,y=-60,z=-150,dx=-71,dy=-2,dz=-75] run tp @s 675 -47 -176 67 0



#End of Parkour
execute positioned 611.52 -37.00 -187.56 if entity @s[distance=..5,y=-37] run tp @s 715 1.18750 -157.480 -143 -0.5
execute positioned 641 -31.00 -103 if entity @s[distance=..5,y=-26,dy=0] run tp @s 715 1.18750 -157.480 -143 -0.5

#Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/parkour

#Item
execute unless items entity @s hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/parkour/item/restart

# Parkour Actions #
execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/parkour/kit_use

