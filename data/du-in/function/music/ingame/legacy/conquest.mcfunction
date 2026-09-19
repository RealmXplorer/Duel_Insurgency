#CONQUEST#

#END OF ROUND#
execute as @a[tag=songEnd,scores={musType=2},tag=!musicOff] at @s run playsound du-in:music.legacy.conquest_end record @s ~ ~ ~ 1000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/legacy/conquest 2260t

#Default
execute as @a[tag=song,scores={musType=2},tag=!musicOff] at @s run playsound du-in:music.legacy.conquest record @s ~ ~ ~ 1000000 1 1
schedule function du-in:music/ingame/legacy/conquest 1950t