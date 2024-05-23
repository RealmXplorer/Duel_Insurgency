#Base movement speed#
attribute @s generic.movement_speed base set 0.1525

#Base Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/tiny

#Base Weight
attribute @s generic.knockback_resistance base set 0