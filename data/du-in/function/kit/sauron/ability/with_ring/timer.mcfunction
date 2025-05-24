scoreboard players remove @s ringInvisTimer 1
effect give @s invisibility 1 1 true
execute if entity @s[scores={ringInvisTimer=..0}] run function du-in:kit/sauron/ability/with_ring/end