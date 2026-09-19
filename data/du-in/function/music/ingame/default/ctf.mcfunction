#CAPTURE THE FLAG#
#END OF ROUND#
execute as @a[tag=songEnd,tag=!musOverride,tag=!musicOff] unless entity @s[scores={musType=2..}] at @s run playsound du-in:music.ctf_end record @s ~ ~ ~ 10000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/default/ctf 3860t

#Default
execute as @a[tag=song,tag=!musOverride,tag=!musicOff] unless entity @s[scores={musType=2..}] at @s run playsound du-in:music.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1
schedule function du-in:music/ingame/default/ctf 3500t
