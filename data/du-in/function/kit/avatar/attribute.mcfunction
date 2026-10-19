#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/attribute/size/small

#ATTRIBUTES
attribute @s minecraft:movement_speed base set 0.13
attribute @s knockback_resistance base set 0.035