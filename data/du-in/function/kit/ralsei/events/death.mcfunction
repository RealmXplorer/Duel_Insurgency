playsound minecraft:undertale.die voice @a ~ ~ ~ 2.5 1
playsound minecraft:undertale.fade voice @a ~ ~ ~ 3 1
execute if entity @s[predicate=du-in:chance/quarter_chance] run playsound minecraft:ralsei.death voice @a ~ ~ ~ 3 1
particle minecraft:dust{color:[1.0, 1.0, 1.0],scale:1.0} ~ ~1 ~ .25 .5 .25 1 100 normal
