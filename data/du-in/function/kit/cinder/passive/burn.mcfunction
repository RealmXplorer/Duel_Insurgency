attribute @s minecraft:movement_speed base set 0.07
attribute @s minecraft:attack_damage base set 4

particle minecraft:angry_villager ~ ~0.5 ~ 0.2 0.5 0.2 1 1
particle minecraft:smoke ~ ~1 ~ 0.25 0.5 0.25 0 25

execute if entity @s[predicate=du-in:chance/low_chance] run tellraw @s {text:"THE FLAMES EMPOWER YOU'",color:gold}