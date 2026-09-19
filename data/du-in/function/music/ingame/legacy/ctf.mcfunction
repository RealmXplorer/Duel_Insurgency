#CAPTURE THE FLAG#
#END OF ROUND#
execute as @a[tag=songEnd,scores={musType=2},tag=!musicOff] at @s run playsound du-in:music.legacy.ctf_end record @s ~ ~ ~ 10000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/legacy/ctf 2880t

#Default
execute as @a[tag=song,scores={musType=2},tag=!musicOff] at @s run playsound du-in:music.legacy.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1
schedule function du-in:music/ingame/legacy/ctf 2380t
