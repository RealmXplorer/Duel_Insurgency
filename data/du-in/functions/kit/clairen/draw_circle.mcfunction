#particle end_rod ^ ^ ^8 0 0 0 0 1
particle minecraft:dust 1 0 1 2 ^ ^ ^8 0 0 0 0 1
tp @s ~ ~ ~ ~9 ~
execute unless entity @s[y_rotation=0..4] at @s run function du-in:kit/clairen/draw_circle