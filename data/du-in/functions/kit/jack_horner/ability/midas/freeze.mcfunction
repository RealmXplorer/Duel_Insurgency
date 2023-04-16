scoreboard players remove @s goldTimer 1
#tp @s @e[type=marker,sort=nearest,tag=gold,limit=1]
execute as @e[type=marker,tag=gold,sort=nearest,limit=1] at @s rotated as @s run tp @a[tag=midasTouched,limit=1,sort=nearest] @s

#effect give @s resistance 1 100 true

execute if entity @s[scores={goldTimer=..0}] run function du-in:kit/jack_horner/ability/midas/unfreeze