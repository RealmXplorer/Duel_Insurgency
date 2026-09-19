#DEATHMATCH#
##COPYRIGHT
#END OF ROUND#
execute as @a[tag=songEnd,scores={musType=4},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.halloween.dm record @s ~ ~ ~ 1000000 1.25 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/halloween/deathmatch 2600t

#Default
execute as @a[tag=song,scores={musType=4},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.halloween.dm record @s ~ ~ ~ 1000000 1 1
schedule function du-in:music/ingame/halloween/deathmatch 3260t
