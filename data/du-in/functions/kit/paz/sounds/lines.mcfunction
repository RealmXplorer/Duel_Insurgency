execute if entity @s[predicate=du-in:chance/forty_chance] run playsound minecraft:paz.laugh voice @a[tag=!working] ~ ~ ~ 3100000 1 1

execute if entity @s[tag=!fortniteCard] run function du-in:kit/paz/card/give_card
#tag @s remove killLine