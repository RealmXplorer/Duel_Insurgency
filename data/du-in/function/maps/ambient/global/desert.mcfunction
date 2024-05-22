scoreboard players add @s ambience 1

scoreboard players set @s[scores={ambience=900..}] ambience 0
execute unless predicate du-in:ambience/night_check if entity @s[scores={ambience=1}] run playsound minecraft:ambient.desertamb ambient @s ~ ~ ~ 1 1 1
execute if predicate du-in:ambience/night_check if entity @s[scores={ambience=1}] run playsound minecraft:ambient.nightamb ambient @s ~ ~ ~ 0.5 1 1

execute if predicate du-in:ambience/night_start run stopsound @s ambient minecraft:ambient.desertamb
execute if predicate du-in:ambience/night_start run scoreboard players set @s ambience 0

execute if predicate du-in:ambience/night_end run stopsound @s ambient minecraft:ambient.nightamb
execute if predicate du-in:ambience/night_end run scoreboard players set @s ambience 0