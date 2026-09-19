#KING OF THE HILL#
#End of Round
execute as @a[tag=songEnd,tag=!musOverride,tag=!musicOff] unless entity @s[scores={musType=2..}] at @s run playsound du-in:music.koth_end record @s ~ ~ ~ 1000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/default/koth 2980t

#Default
execute as @a[tag=song,tag=!musOverride,tag=!musicOff] unless entity @s[scores={musType=2..}] at @s run playsound du-in:music.koth record @s ~ ~ ~ 1000000 1 1
schedule function du-in:music/ingame/default/koth 3360t
