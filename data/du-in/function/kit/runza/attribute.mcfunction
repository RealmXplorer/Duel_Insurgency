execute if entity @a[tag=notEaten] run attribute @s minecraft:armor base set 4
execute if entity @a[tag=notEaten] run attribute @s minecraft:attack_damage base set 1.5

execute unless entity @a[tag=notEaten] run attribute @s minecraft:armor base set 0
execute unless entity @a[tag=notEaten] run attribute @s minecraft:attack_damage base set 1

attribute @s minecraft:movement_speed base set 0.135
attribute @s knockback_resistance base set 0.04