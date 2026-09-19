#CAPTURE THE FLAG#
#End of round
execute as @a[tag=songEnd,scores={musType=3},tag=!musicOff] at @s run playsound du-in:music.beta.ctf_end record @s ~ ~ ~ 10000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/beta/ctf 1470t

#Default
execute as @a[tag=song,scores={musType=3},tag=!musicOff] at @s run playsound du-in:music.beta.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1
schedule function du-in:music/ingame/beta/ctf 1650t
