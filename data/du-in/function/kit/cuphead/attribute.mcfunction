#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/attribute/size/small

#Attributes#
attribute @s minecraft:movement_speed base set 0.135
attribute @s knockback_resistance base set 0.02
attribute @s minecraft:attack_knockback base set 0.1
