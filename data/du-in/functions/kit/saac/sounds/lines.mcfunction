execute if entity @s[scores={Health=..9}] run playsound minecraft:saac.line.low voice @a[tag=!working] ~ ~ ~ 3100000 1 1
execute if entity @s[scores={Health=10..}] run playsound minecraft:saac.line.kill voice @a[tag=!working] ~ ~ ~ 3100000 1 1
tag @s remove killLine