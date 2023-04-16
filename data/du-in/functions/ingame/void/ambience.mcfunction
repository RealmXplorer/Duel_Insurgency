scoreboard players add @s localAmb 1
execute if entity @s[scores={localAmb=1},tag=!win] positioned 97 5 -107 run playsound minecraft:soundeffect.whisper ambient @s[distance=..15] ~ ~ ~ 10 1 1
scoreboard players reset @s[scores={localAmb=360..}] localAmb