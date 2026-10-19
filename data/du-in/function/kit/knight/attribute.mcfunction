#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/attribute/size/small

##Base KB Resistance is 0.
attribute @s knockback_resistance base set 0
attribute @s movement_speed base set 0.1425
