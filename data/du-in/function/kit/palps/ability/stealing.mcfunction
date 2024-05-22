scoreboard players remove @s palpTimer 1

particle minecraft:crit ~ ~.5 ~ 0 1 0 0.5 3 force @a

execute if entity @s[scores={palpTimer=..1}] run function du-in:kit/palps/ability/end