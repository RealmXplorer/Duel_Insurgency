execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/attribute/size/smaller

#Attributes
attribute @s[tag=!darwin] minecraft:movement_speed base set 0.13
attribute @s[tag=darwin] minecraft:movement_speed base set 0.1475

attribute @s knockback_resistance base set 0.01

#Jump Height
attribute @s[tag=!darwin] minecraft:jump_strength base set 0.42
attribute @s[tag=darwin] minecraft:jump_strength base set 0.47

attribute @s[tag=darwin] minecraft:water_movement_efficiency base set 1
attribute @s[tag=!darwin] minecraft:attack_knockback base set 0
attribute @s[tag=darwin] minecraft:attack_knockback base set 0.1
