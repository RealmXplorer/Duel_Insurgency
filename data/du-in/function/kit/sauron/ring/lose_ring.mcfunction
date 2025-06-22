tag @s remove hasRing
clear @s sugar
execute if entity @s[scores={kit=31},tag=!stolen] run tag @s remove cooldown
execute if entity @s[scores={kit=31},tag=!stolen] run attribute @s minecraft:attack_knockback base set 0


scoreboard players reset @s ringTimer

attribute @s armor modifier remove armor_corrupt
attribute @s minecraft:movement_speed modifier remove speed_corrupt
#attribute @s armor base set 0