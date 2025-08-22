scoreboard players remove @s goldTimer 1
execute as @n[type=marker,tag=gold,distance=..2] at @s rotated as @s run tp @p[tag=midasTouched,distance=..2] @s

execute if entity @s[scores={goldTimer=..0}] run function du-in:kit/jack_horner/ability/midas/unfreeze