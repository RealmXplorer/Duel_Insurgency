#End of round loop
execute as @a[tag=songEnd,tag=!musicOff,tag=!musOverride] unless entity @s[scores={musType=1..}] at @s run playsound du-in:music.classic_end record @s ~ ~ ~ 1000000 1 1
execute if entity @a[tag=songEnd] run return run schedule function du-in:music/ingame/default/classic 1940t

#Default loop
execute as @a[tag=song,tag=!musicOff,tag=!musOverride] unless entity @s[scores={musType=1..}] at @s run playsound du-in:music.classic record @s ~ ~ ~ 1000000 1 1
schedule function du-in:music/ingame/default/classic 2740t
