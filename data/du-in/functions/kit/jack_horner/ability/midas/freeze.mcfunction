scoreboard players remove @s goldTimer 1
tp @s @e[type=marker,sort=nearest,tag=gold,limit=1]
#effect give @s resistance 1 100 true

execute if entity @s[scores={goldTimer=..0}] run function du-in:kit/jack_horner/ability/midas/unfreeze