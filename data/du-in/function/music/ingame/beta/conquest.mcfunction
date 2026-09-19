#CONQUEST#

execute as @a[tag=song,tag=!songEnd,scores={musType=3},tag=!musicOff] at @s run playsound du-in:music.beta.conquest record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,scores={musType=3},tag=!musicOff] at @s run playsound du-in:music.beta.conquest_end record @s ~ ~ ~ 1000000 1 1


schedule function du-in:music/ingame/beta/conquest 1620t