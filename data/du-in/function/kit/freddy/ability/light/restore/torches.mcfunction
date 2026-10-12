# execute if score @s lightVariant matches 1 run setblock ~ ~ ~ torch
# execute if score @s lightVariant matches 2 run setblock ~ ~ ~ soul_torch

# execute if score @s lightVariant matches 3 run setblock ~ ~ ~ torch[facing=west]
# execute if score @s lightVariant matches 4 run setblock ~ ~ ~ soul_torch[facing=west]

# execute if score @s lightVariant matches 5 run setblock ~ ~ ~ torch[facing=east]
# execute if score @s lightVariant matches 6 run setblock ~ ~ ~ soul_torch[facing=east]

# execute if score @s lightVariant matches 7 run setblock ~ ~ ~ torch[facing=south]
# execute if score @s lightVariant matches 8 run setblock ~ ~ ~ soul_torch[facing=south]

# execute if score @s lightVariant matches 9 run setblock ~ ~ ~ torch[facing=north]
# execute if score @s lightVariant matches 10 run setblock ~ ~ ~ soul_torch[facing=north]

data modify storage du-in:temp torch set from entity @s data
function du-in:kit/freddy/ability/light/restore/torch_data with storage du-in:temp torch

kill @s