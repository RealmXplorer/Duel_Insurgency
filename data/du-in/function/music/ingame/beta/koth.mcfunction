#KING OF THE HILL#
# scoreboard players set @s[tag=song,scores={music=1000..}] music 0
# execute if entity @s[tag=song,scores={music=1}] run playsound du-in:music.beta.koth record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=beta,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound du-in:music.beta.koth record @s ~ ~ ~ 1000000 1 1

# scoreboard players reset @s[tag=songEnd,scores={music=1000..}] music
# execute if entity @s[tag=songEnd,scores={music=1}] run playsound du-in:music.beta.koth_end record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=beta,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound du-in:music.beta.koth_end record @s ~ ~ ~ 1000000 1 1

schedule function du-in:music/ingame/beta/koth 1000t