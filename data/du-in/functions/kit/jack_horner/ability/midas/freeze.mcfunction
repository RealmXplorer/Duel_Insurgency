scoreboard players remove @s goldTimer 1
tp @s @e[type=marker,sort=nearest,tag=gold,limit=1]
effect give @s resistance 1 100 true

tag @s[scores={goldTimer=..0}] remove midasTouched