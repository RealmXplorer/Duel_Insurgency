execute unless entity @s[scores={shrunkTimer=0..}] run playsound minecraft:jack_horner.hit voice @a ~ ~ ~ 1 1
execute if entity @s[scores={shrunkTimer=0..}] run playsound minecraft:jack_horner.hit voice @a ~ ~ ~ 1 1.5
execute if entity @s[tag=theHatchet] run function du-in:kit/jack_horner/ability/hatchet/end
scoreboard players reset @s hit