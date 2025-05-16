attribute @s minecraft:movement_speed base set 0.07
attribute @s minecraft:attack_damage base set 4

execute if entity @s[predicate=du-in:chance/low_chance] run tellraw @s {text:"THE FLAMES EMPOWER YOU'",color:gold}