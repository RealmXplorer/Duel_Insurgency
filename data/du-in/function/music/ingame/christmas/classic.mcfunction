#CLASSIC#
##COPYRIGHT

#End of round
execute as @a[tag=songEnd,scores={musType=5},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.christmas.ffa record @s ~ ~ ~ 10000000 1.25 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/christmas/classic 2620t

#Default
execute as @a[tag=song,scores={musType=5},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.christmas.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1
schedule function du-in:music/ingame/christmas/classic 3280t
