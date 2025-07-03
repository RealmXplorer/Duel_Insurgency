#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/runza/events/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/runza/events/jump

execute unless entity @a[tag=notEaten] run attribute @s minecraft:armor base set 0
execute unless entity @a[tag=notEaten] run attribute @s minecraft:attack_damage base set 1
