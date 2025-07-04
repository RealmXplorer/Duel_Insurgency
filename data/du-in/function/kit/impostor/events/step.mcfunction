playsound minecraft:sus.step voice @a ~ ~ ~ 0.5 1 1
execute if entity @s[tag=drip,predicate=du-in:chance/half_chance] run playsound minecraft:darwin.step voice @a ~ ~ ~ 1 1
#scoreboard players reset @s step
#scoreboard players reset @s sprint