#KING OF THE HILL#

execute as @a[tag=song,tag=!songEnd,tag=beta,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound du-in:music.beta.koth record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=beta,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound du-in:music.beta.koth_end record @s ~ ~ ~ 1000000 1 1

schedule function du-in:music/ingame/beta/koth 1000t