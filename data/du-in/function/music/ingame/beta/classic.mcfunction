#CLASSIC#
#End of round
execute as @a[tag=songEnd,scores={musType=3},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.beta.classic_end record @s ~ ~ ~ 10000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/beta/classic 1520t

#Default
execute as @a[tag=song,scores={musType=3},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.beta.classic record @s ~ ~ ~ 10000000 1 1
schedule function du-in:music/ingame/beta/classic 1240t
