tag @s remove hasRing
clear @s sugar
execute if entity @s[scores={kit=31}] run tag @s remove cooldown

scoreboard players reset @s ringTimer

attribute @s generic.armor modifier remove dfe3b4d7-bd72-4809-8829-42d53749878c
attribute @s minecraft:generic.movement_speed modifier remove 7c9a62a7-9257-4980-a297-c39c298cc204
#attribute @s generic.armor base set 0