#ATTRIBUTES#
attribute @s minecraft:movement_speed base set 0.145
attribute @s knockback_resistance base set 0.02

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/small