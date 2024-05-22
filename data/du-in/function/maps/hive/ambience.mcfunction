scoreboard players add @s ambience 1

scoreboard players set @s[scores={ambience=60..}] ambience 0
execute if entity @s[scores={ambience=1}] run playsound minecraft:entity.bee.loop ambient @s ~ ~ ~ .5 1.5

execute if entity @s[scores={ambience=1}] run playsound minecraft:block.beehive.work ambient @s ~ ~ ~ 1 1
execute if entity @s[scores={ambience=21}] run playsound minecraft:block.beehive.work ambient @s ~ ~ ~ 1 .75
execute if entity @s[scores={ambience=41}] run playsound minecraft:block.beehive.work ambient @s ~ ~ ~ 1 1.25