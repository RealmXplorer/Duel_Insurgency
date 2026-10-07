#Darkness attribute
execute unless score @s lightLevel matches 0 if entity @s[predicate=du-in:light_level/0_3] run function du-in:kit/freddy/passive/dark_1
execute unless score @s lightLevel matches 1 if entity @s[predicate=du-in:light_level/4_6] run function du-in:kit/freddy/passive/dark_2
execute unless score @s lightLevel matches 2 if entity @s[predicate=du-in:light_level/7_10] run function du-in:kit/freddy/passive/dark_3
execute unless score @s lightLevel matches 3 if entity @s[predicate=du-in:light_level/11_15] run function du-in:kit/freddy/passive/dark_4