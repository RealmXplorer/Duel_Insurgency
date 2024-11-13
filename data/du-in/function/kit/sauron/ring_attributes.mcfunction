#Attributes
attribute @s knockback_resistance base set 0.09
attribute @s minecraft:movement_speed base set 0.125
attribute @s minecraft:armor base set -2
attribute @s minecraft:attack_damage base set 2

#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/huge