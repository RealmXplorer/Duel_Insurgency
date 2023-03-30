scoreboard players add @s ambience 1

scoreboard players set @s[scores={ambience=900..}] ambience 0
execute if entity @s[scores={ambience=1}] run playsound minecraft:ambient.jungleamb ambient @s ~ ~ ~ 1 1 1