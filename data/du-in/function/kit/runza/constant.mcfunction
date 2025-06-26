#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/runza/events/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

execute if entity @a[tag=notEaten] run attribute @s minecraft:armor base set 4
execute if entity @a[tag=notEaten] run attribute @s minecraft:attack_damage base set 1.5

execute unless entity @a[tag=notEaten] run attribute @s minecraft:armor base set 0
execute unless entity @a[tag=notEaten] run attribute @s minecraft:attack_damage base set 1
