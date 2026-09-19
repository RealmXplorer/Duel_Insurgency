#DEATHMATCH#
##COPYRIGHT

#END OF ROUND#
execute as @a[tag=songEnd,scores={musType=5},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.christmas.dm record @s ~ ~ ~ 1000000 1.25 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/christmas/deathmatch 2440t

#Default
execute as @a[tag=song,scores={musType=5},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.christmas.dm record @s ~ ~ ~ 1000000 1 1
schedule function du-in:music/ingame/christmas/deathmatch 3040t
