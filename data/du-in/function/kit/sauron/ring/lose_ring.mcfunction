tag @s remove hasRing
clear @s sugar
execute if entity @s[scores={kit=31}] run tag @s remove cooldown
execute if entity @s[scores={kit=31}] run function du-in:kit/sauron/weapon
execute if entity @s[scores={kit=31}] run function du-in:kit/sauron/armor

scoreboard players reset @s ringTimer

attribute @s generic.armor modifier remove armor_corrupt
attribute @s minecraft:generic.movement_speed modifier remove speed_corrupt
#attribute @s generic.armor base set 0