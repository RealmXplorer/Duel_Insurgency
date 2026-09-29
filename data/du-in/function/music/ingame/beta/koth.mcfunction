#KING OF THE HILL#

execute as @a[tag=song,scores={musType=3},tag=!musOverride,tag=!musicOff,tag=!stump] at @s run playsound du-in:music.beta.koth record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,scores={musType=3},tag=!musOverride,tag=!musicOff,tag=!stump] at @s run playsound du-in:music.beta.koth_end record @s ~ ~ ~ 1000000 1 1

schedule function du-in:music/ingame/beta/koth 1000t