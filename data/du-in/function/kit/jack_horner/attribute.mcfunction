#ATTRIBUTES
attribute @s minecraft:generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.35

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/bigger