#Attributes
attribute @s[tag=!darwin] minecraft:generic.movement_speed base set 0.13
attribute @s[tag=darwin] minecraft:generic.movement_speed base set 0.1475

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/smaller

attribute @s generic.knockback_resistance base set 0.01