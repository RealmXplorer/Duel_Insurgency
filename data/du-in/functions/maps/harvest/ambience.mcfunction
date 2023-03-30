function du-in:maps/ambient/global/forest

scoreboard players add @s localAmb 1
execute if entity @s[scores={localAmb=1}] positioned as @e[type=marker,tag=riverAmb] run playsound minecraft:ambient.river ambient @s[distance=..15] ~ ~ ~ 1 1 1
scoreboard players reset @s[scores={localAmb=60..}] localAmb