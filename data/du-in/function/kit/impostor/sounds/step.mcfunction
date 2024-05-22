playsound minecraft:sus.step master @a ~ ~ ~ 0.3 1 1
execute if entity @s[tag=drip,predicate=du-in:chance/half_chance] run playsound minecraft:darwin.step master @a ~ ~ ~ .1 1
scoreboard players reset @s step
scoreboard players reset @s sprint