#Sets Kit's base attributes for the whole match.
##Base KB Resistance is 0.
attribute @s minecraft:movement_speed base set 0.1375
attribute @s knockback_resistance base set 0.35
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/bigger