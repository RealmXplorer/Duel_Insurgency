#KING OF THE HILL#
##COPYRIGHT

#END OF ROUND
execute as @a[tag=songEnd,scores={musType=5},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.christmas.koth record @s ~ ~ ~ 1000000 1.25 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/christmas/koth 2180t

#Default
execute as @a[tag=song,scores={musType=5},tag=!musOverride,tag=!musicOff] at @s run playsound du-in:music.christmas.koth record @s ~ ~ ~ 1000000 1 1
schedule function du-in:music/ingame/christmas/koth 2720t
