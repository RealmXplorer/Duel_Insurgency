#Base movement speed#
attribute @s[tag=!deathDouble] minecraft:movement_speed base set 0.125
attribute @s[tag=deathDouble] minecraft:movement_speed base set 0.14

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/big

#Base Weight
attribute @s knockback_resistance base set 0.23