#DEATHMATCH#

execute as @a[tag=song,tag=!songEnd,scores={musType=3},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.beta.deathmatch record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,scores={musType=3},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.beta.deathmatch_end record @s ~ ~ ~ 1000000 1 1

schedule function du-in:music/ingame/beta/deathmatch 1100t
