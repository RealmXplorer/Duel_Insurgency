# execute if score @s waterLogged matches 1 run return run function du-in:kit/freddy/ability/light/restore/waterlogged/lanterns

# execute if score @s lightVariant matches 1 run setblock ~ ~ ~ lantern
# execute if score @s lightVariant matches 2 run setblock ~ ~ ~ soul_lantern
# execute if score @s lightVariant matches 3 run setblock ~ ~ ~ copper_lantern

# execute if score @s lightVariant matches 4 run setblock ~ ~ ~ lantern[hanging=true]
# execute if score @s lightVariant matches 5 run setblock ~ ~ ~ soul_lantern[hanging=true]
# execute if score @s lightVariant matches 6 run setblock ~ ~ ~ copper_lantern[hanging=true]

# Restores the original lantern block with all states intact
$setblock ~ ~ ~ $(variant)lantern[hanging=$(hanging)$(waterlog)]

kill @s