#Attribute#
attribute @s minecraft:movement_speed base set 0.125
attribute @s minecraft:armor_toughness base set 1.5
attribute @s minecraft:knockback_resistance base set 0.175

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/big