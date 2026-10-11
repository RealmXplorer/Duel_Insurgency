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
execute if entity @s[x=620,y=-28,z=-75,dx=60,dy=1,dz=-13] run function du-in:lobby/parkour/checkpoint/checkpoint2a
execute if entity @s[x=602,y=-31,z=-143,dx=78,dy=1,dz=67] run function du-in:lobby/parkour/checkpoint/checkpoint2b

#Lava Checkpoint
execute if entity @s[x=636,y=-23,z=-103,dx=-6,dy=4,dz=-4] unless entity @s[scores={checkpoint=3..}] run scoreboard players set @s checkpoint 3
execute positioned 636 -31 -101 if entity @s[distance=..58,y=-30,dy=0] run function du-in:lobby/parkour/checkpoint/lava

#Lava Checkpoint 2
execute if entity @s[x=636,y=-26,z=-80,dx=0,dy=3,dz=4] unless entity @s[scores={checkpoint=4..}] run scoreboard players set @s checkpoint 4
execute if entity @s[x=620,y=-28,z=-75,dx=60,dy=1,dz=12] run function du-in:lobby/parkour/checkpoint/checkpoint4

#Lava Checkpoint 3
execute if entity @s[x=618,y=-19,z=-65,dx=2,dy=7,dz=-8] unless entity @s[scores={checkpoint=5..}] run scoreboard players set @s checkpoint 5
execute if entity @s[x=602,y=-27,z=-75,dx=13,dy=1,dz=12] run function du-in:lobby/parkour/checkpoint/checkpoint5


#Forest Checkpoint
execute if entity @s[x=600,y=-9,z=-67,dx=-2,dy=5,dz=-5] unless entity @s[scores={checkpoint=6..}] run scoreboard players set @s checkpoint 6
execute if entity @s[x=581,y=-9,z=-63,dx=-50,dy=1,dz=-40] run function du-in:lobby/parkour/checkpoint/checkpoint6
execute if entity @s[x=595,y=-9,z=-83,dx=-60,dy=1,dz=-44] run function du-in:lobby/parkour/checkpoint/checkpoint6

#Mineshaft Checkpoint
execute if entity @s[x=600,y=32,z=-54,dx=-4,dy=5,dz=0] unless entity @s[scores={checkpoint=7..}] run scoreboard players set @s checkpoint 7
execute if entity @s[x=604,y=30,z=41,dx=-14,dy=-4,dz=-12] run function du-in:lobby/parkour/checkpoint/checkpoint7

#Mineshaft checkpoint 2
execute if entity @s[x=600,y=32,z=-54,dx=-4,dy=5,dz=0] unless entity @s[scores={checkpoint=8..}] run scoreboard players set @s checkpoint 8
execute if entity @s[x=592,y=36,z=-39,dx=4,dy=4,dz=0] run function du-in:lobby/parkour/checkpoint/checkpoint8

#Mineshaft checkpoint 3
execute if entity @s[x=604,y=39,z=-21,dx=0,dy=-4,dz=4] unless entity @s[scores={checkpoint=9..}] run scoreboard players set @s checkpoint 9
execute if entity @s[x=605,y=34,z=-16,dx=9,dy=-2.8,dz=-18] run function du-in:lobby/parkour/checkpoint/checkpoint9

#Stronghold
execute if entity @s[x=626,y=44,z=-32,dx=0,dy=4,dz=-4] unless entity @s[scores={checkpoint=10..}] run scoreboard players set @s checkpoint 10
execute if entity @s[x=652,y=42,z=-29,dx=-25,dy=-2,dz=-10] run function du-in:lobby/parkour/checkpoint/checkpoint10


#End region
execute if entity @s[x=673,y=-47,z=-175,dx=3,dy=3,dz=3] unless entity @s[scores={checkpoint=11..}] run scoreboard players set @s checkpoint 11
#execute positioned 658 24 -34 if entity @s[distance=..12,y=24] run tp @s 675 -43 -176
execute positioned 658 24 -34 if entity @s[distance=..12,y=24] run function du-in:lobby/parkour/checkpoint/checkpoint11
execute if entity @s[x=679,y=-60,z=-150,dx=-71,dy=-2,dz=-75] run function du-in:lobby/parkour/checkpoint/checkpoint11



#End of Parkour
execute positioned 611.52 -37.00 -187.56 if entity @s[distance=..5,y=-37] run function du-in:lobby/parkour/checkpoint/ending
execute positioned 641 -31.00 -103 if entity @s[distance=..5,y=-26,dy=0] run function du-in:lobby/parkour/checkpoint/ending


execute if entity @s[x=723,y=10,z=-196,dx=1,dy=1,dz=-1] run tp @s 723 14 -202 0 0
execute if entity @s[x=726,y=14,z=-211,dx=-7,dy=.1,dz=-3] run tp @s 709 16 -220 180 0
execute if entity @s[x=709,y=13,z=-247,dx=1,dy=.1,dz=-1] run tp @s 690 0 -238 -90 0
execute if entity @s[x=701,y=-1,z=-258,dx=1,dy=.1,dz=-1] run tp @s 689 -11 -240 -90 0
execute if entity @s[x=708,y=-14,z=-257,dx=1,dy=.1,dz=1] run tp @s 713 4 -222 -90 0
execute if entity @s[x=725,y=1,z=-242,dx=1,dy=.1,dz=1] run tp @s 718 14 -255 -180 0
execute if entity @s[x=733,y=11,z=-284,dx=1,dy=.1,dz=1] run tp @s 721 -25 -221 180 0
execute if entity @s[x=729,y=-28,z=-228,dx=1,dy=.1,dz=1] run tp @s 742 -23 -242 0 0
execute if entity @s[x=749,y=-35,z=-239,dx=1,dy=.1,dz=1] run tp @s 730.5 -13 -239.5 0 0
execute if entity @s[x=730,y=-10,z=-218,dx=1,dy=.1,dz=1] run tp @s 748.5 0.5 -240.5 -180 0
execute if entity @s[x=748,y=-3,z=-272,dx=1,dy=.1,dz=1] run tp @s 747 -7 -217.5 -90 0
execute if entity @s[x=757,y=-6,z=-223,dx=1,dy=.1,dz=1] run tp @s 765.5 -4 -260.5 -90 0
execute if entity @s[x=771,y=-4,z=-267,dx=1,dy=.1,dz=1] run tp @s 772.5 -1 -244.5 0 0
execute if entity @s[x=786,y=-2,z=-244,dx=1,dy=.1,dz=1] run tp @s 777.5 9 -259.5 -180 0

execute if entity @s[x=704,y=11,z=-218,dx=10,dy=1,dz=-31] run tp @s 709 16 -220 180 0
execute if entity @s[x=687,y=-4,z=-233,dx=18,dy=1,dz=-29] run tp @s 690 0 -238 -90 0
execute if entity @s[x=685,y=-17,z=-234,dx=26,dy=1,dz=-25] run tp @s 689 -11 -240 -90 0
execute if entity @s[x=710,y=-2,z=-217,dx=18,dy=1,dz=-27] run tp @s 713 4 -222 -90 0
execute if entity @s[x=712,y=8,z=-251,dx=25,dy=1,dz=-36] run tp @s 718 14 -255 -180 0
execute if entity @s[x=716,y=-32,z=-217,dx=15,dy=1,dz=-28] run tp @s 721 -25 -221 180 0
execute if entity @s[x=739,y=-38,z=-245,dx=14,dy=1,dz=19] run tp @s 742 -23 -242 0 0
execute if entity @s[x=735,y=-17,z=-243,dx=-9,dy=1,dz=26] run tp @s 730.5 -13 -239.5 0 0
execute if entity @s[x=745,y=-5,z=-238,dx=7,dy=1,dz=-37] run tp @s 748.5 0.5 -240.5 -180 0
execute if entity @s[x=744,y=-10,z=-215,dx=24,dy=1,dz=-10] run tp @s 747 -7 -217.5 -90 0
execute if entity @s[x=763,y=-8,z=-257,dx=20,dy=1,dz=-13] run tp @s 765.5 -4 -260.5 -90 0
execute if entity @s[x=770,y=-5,z=-246,dx=19,dy=1,dz=27] run tp @s 772.5 -1 -244.5 0 0
execute if entity @s[x=772,y=6,z=-258,dx=11,dy=1,dz=-21] run tp @s 777.5 9 -259.5 -180 0

execute if entity @s[x=591,y=31,z=-16,dx=7,dy=-1,dz=-21] run tp @s 594 36 -36 0 0

#Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/parkour

#Item
execute unless items entity @s hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/parkour/item/restart

# Parkour Actions #
execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/parkour/kit_use

