#CONQUEST#
# scoreboard players set @s[tag=song,scores={music=3480..}] music 0
# execute if entity @s[tag=song,scores={music=1}] run playsound du-in:music.conquest record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=!beta,tag=!legacy,tag=!musicOff] at @s run playsound du-in:music.conquest record @s ~ ~ ~ 1000000 1 1

#END OF ROUND#
# scoreboard players set @s[tag=songEnd,scores={music=2980..}] music 0
# execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff] run playsound du-in:music.conquest_end record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=!beta,tag=!legacy,tag=!musicOff] at @s run playsound du-in:music.conquest_end record @s ~ ~ ~ 1000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/conquest 3480t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/conquest 2980t