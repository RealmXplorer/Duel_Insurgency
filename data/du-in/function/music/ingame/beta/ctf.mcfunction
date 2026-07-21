#CAPTURE THE FLAG#
# scoreboard players set @s[tag=song,scores={music=1650..}] music 0
# execute if entity @a[tag=song,scores={music=1},tag=!songEnd] run playsound du-in:music.beta.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=beta,tag=!legacy,tag=!musicOff] at @s run playsound du-in:music.beta.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1

# scoreboard players reset @s[tag=songEnd,scores={music=1470..}] music
# execute if entity @s[tag=songEnd,scores={music=1}] run playsound du-in:music.beta.ctf_end record @s ~ ~ ~ 10000000 1 1

execute as @a[tag=songEnd,tag=beta,tag=!legacy,tag=!musicOff] at @s run playsound du-in:music.beta.ctf_end record @s ~ ~ ~ 10000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/beta/ctf 1650t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/beta/ctf 1470t