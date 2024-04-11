#particle end_rod ^ ^ ^8 0 0 0 0 1
# execute if entity @s[tag=!sabotaged] run particle minecraft:dust 1 0 1 2 ^ ^ ^6 0 0 0 0 1
# execute if entity @s[tag=sabotaged] run particle minecraft:dust 1 0 0 2 ^ ^ ^6 0 0 0 0 1

execute if entity @s[tag=!sabotaged] run particle minecraft:dust{color:[1.0, 0.0, 1.0],scale:2.0} ^ ^ ^6 0 0 0 0 1
execute if entity @s[tag=sabotaged] run particle minecraft:dust{color:[1.0, 0.0, 0.0],scale:2.0} ^ ^ ^6 0 0 0 0 1

tp @s ~ ~ ~ ~9 ~
execute unless entity @s[y_rotation=0..4] at @s run function du-in:kit/clairen/draw_circle