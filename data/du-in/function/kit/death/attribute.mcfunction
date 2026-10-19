execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/attribute/size/big

#Base movement speed#
attribute @s[tag=!deathDouble] minecraft:movement_speed base set 0.125
attribute @s[tag=deathDouble] minecraft:movement_speed base set 0.14

#Base Weight
attribute @s knockback_resistance base set 0.23