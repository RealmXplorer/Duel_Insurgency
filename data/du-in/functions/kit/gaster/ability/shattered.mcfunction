#clear @a[scores={gasterTimer=79..}]
scoreboard players remove @s gasterTimer 1

tag @s add gasterInvisible


execute if entity @s[scores={gasterTimer=20..}] run function du-in:kit/gaster/ability/shattered_effects

execute if entity @s[scores={gasterTimer=..0}] run function du-in:kit/gaster/ability/shattered_end