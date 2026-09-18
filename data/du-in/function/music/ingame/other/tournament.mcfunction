#TOURNAMENT#
#Default
execute as @a[tag=song,tag=!songEnd,scores={musType=1},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.tournament record @s ~ ~ ~ 10000000000000000000000000 1 1

#End of Round
execute as @a[tag=songEnd,scores={musType=1},tag=!musicOff,tag=!musOverride] at @s run playsound du-in:music.tournament_end record @s ~ ~ ~ 10000000 1 1


#End of round Reschedule
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/other/tournament 2620t

#Default reschedule
schedule function du-in:music/ingame/other/tournament 2860t