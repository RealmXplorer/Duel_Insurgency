#CLASSIC#
#End of round
execute as @a[tag=songEnd,scores={musType=2},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.legacy.classic_end record @s ~ ~ ~ 10000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/legacy/classic 1400t

#Default
execute as @a[tag=song,scores={musType=2},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.legacy.classic record @s ~ ~ ~ 100000000000 1 1
schedule function du-in:music/ingame/legacy/classic 1660t
