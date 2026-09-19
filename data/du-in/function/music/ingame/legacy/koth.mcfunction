#KING OF THE HILL#
#End of Round
execute as @a[tag=songEnd,scores={musType=2},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.legacy.koth_end record @s ~ ~ ~ 1000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/legacy/koth 2800t

#Default
execute as @a[tag=song,scores={musType=2},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.legacy.koth record @s ~ ~ ~ 1000000 1 1
schedule function du-in:music/ingame/legacy/koth 2180t
