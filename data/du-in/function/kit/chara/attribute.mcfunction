#Speed and Weight
attribute @s minecraft:movement_speed base set 0.13
attribute @s knockback_resistance base set 0.035

#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/small
