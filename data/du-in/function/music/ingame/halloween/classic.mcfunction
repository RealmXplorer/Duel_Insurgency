#CLASSIC#
##COPYRIGHT
#END OF ROUND
execute as @a[tag=songEnd,scores={musType=4},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.halloween.ffa record @s ~ ~ ~ 10000000 1.25 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/halloween/classic 2600t

#Default
execute as @a[tag=song,scores={musType=4},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.halloween.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1
schedule function du-in:music/ingame/halloween/classic 3260t
