tag @s remove hasRing
clear @s sugar
execute if entity @s[scores={kit=31},tag=!stolen] run tag @s remove cooldown
execute if entity @s[scores={kit=31},tag=!stolen] run function du-in:kit/sauron/weak_attributes


scoreboard players reset @s ringTimer
tag @s remove ringCorrupted

attribute @s armor modifier remove armor_corrupt
attribute @s minecraft:movement_speed modifier remove speed_corrupt

execute as @r run function du-in:kit/sauron/ring/give_ring