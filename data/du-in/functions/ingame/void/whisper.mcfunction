execute positioned as @e[type=marker,tag=pylon] run playsound minecraft:soundeffect.whisper ambient @a[distance=..30] ~ ~ ~ 10 1 1
#scoreboard players reset @s[scores={localAmb=360..}] localAmb

schedule function du-in:ingame/void/whisper 360t