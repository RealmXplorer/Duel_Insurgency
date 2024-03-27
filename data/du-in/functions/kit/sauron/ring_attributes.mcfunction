#Attributes
attribute @s generic.knockback_resistance base set 0.09
attribute @s minecraft:generic.movement_speed base set 0.125
attribute @s minecraft:generic.armor base set -2
attribute @s minecraft:generic.attack_damage base set 2

#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/huge