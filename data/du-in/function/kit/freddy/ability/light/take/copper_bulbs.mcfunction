scoreboard players set @s lightType 5

execute if block ~ ~ ~ copper_bulb run scoreboard players set @s lightVariant 1
execute if block ~ ~ ~ exposed_copper_bulb run scoreboard players set @s lightVariant 2
execute if block ~ ~ ~ weathered_copper_bulb run scoreboard players set @s lightVariant 3
execute if block ~ ~ ~ oxidized_copper_bulb run scoreboard players set @s lightVariant 4
execute if block ~ ~ ~ waxed_copper_bulb run scoreboard players set @s lightVariant 5
execute if block ~ ~ ~ waxed_exposed_copper_bulb run scoreboard players set @s lightVariant 6
execute if block ~ ~ ~ waxed_weathered_copper_bulb run scoreboard players set @s lightVariant 7
execute if block ~ ~ ~ waxed_oxidized_copper_bulb run scoreboard players set @s lightVariant 8

execute if entity @s[scores={lightVariant=1}] run setblock ~ ~ ~ copper_bulb[lit=false]
execute if entity @s[scores={lightVariant=2}] run setblock ~ ~ ~ exposed_copper_bulb[lit=false]
execute if entity @s[scores={lightVariant=3}] run setblock ~ ~ ~ weathered_copper_bulb[lit=false]
execute if entity @s[scores={lightVariant=4}] run setblock ~ ~ ~ oxidized_copper_bulb[lit=false]
execute if entity @s[scores={lightVariant=5}] run setblock ~ ~ ~ waxed_copper_bulb[lit=false]
execute if entity @s[scores={lightVariant=6}] run setblock ~ ~ ~ waxed_exposed_copper_bulb[lit=false]
execute if entity @s[scores={lightVariant=7}] run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=false]
execute if entity @s[scores={lightVariant=8}] run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=false]


function du-in:kit/freddy/ability/start_timer