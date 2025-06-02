playsound minecraft:jack_horner.hit voice @a ~ ~ ~ 0.5 1
execute if entity @s[tag=theHatchet] run function du-in:kit/jack_horner/ability/hatchet/end
scoreboard players reset @s hit