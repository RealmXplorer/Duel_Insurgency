#execute if entity @s[predicate=du-in:chance/quarter_chance] run effect give @s invisibility 2 1 true
execute if entity @s[tag=!ringCorrupted] run function du-in:kit/sauron/ring/corrupt_effects

attribute @s armor modifier add armor_corrupt -5 add_value
attribute @s minecraft:movement_speed modifier add speed_corrupt -0.05 add_value
