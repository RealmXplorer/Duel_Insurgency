##GO BACK NOW IN SCHEDULED FUNCTION

#execute positioned 643 4 -149 as @a[gamemode=!spectator,tag=parkour,distance=..26] at @s if entity @s[y=5,dy=0] run function du-in:lobby/parkour/checkpoint1

execute as @a[gamemode=!spectator,tag=parkour,x=628,y=5,z=-126,dx=33,dy=0,dz=-51] at @s run function du-in:lobby/parkour/checkpoint1

execute positioned 636 -31 -101 as @a[gamemode=!spectator,tag=parkour,distance=..58] at @s if entity @s[y=-31,dy=0] run function du-in:lobby/parkour/lava

execute as @a[gamemode=!spectator,tag=parkour] at @s if entity @s[x=680,y=-29,z=-76,dx=-60,dy=0,dz=12] run tp @s[tag=!working] 636 -26 -74 -90 0

#Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/parkour

#x=628
#y=5
#z=-126

#dz=51
#dx=33