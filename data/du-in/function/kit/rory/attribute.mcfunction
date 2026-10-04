#ATTRIBUTES
attribute @s minecraft:movement_speed base set 0.13
attribute @s knockback_resistance base set 0.035
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/big

attribute @s minecraft:air_drag_modifier modifier add air_drag -2 add_value
effect give @s minecraft:slow_falling infinite 1 true
attribute @s minecraft:movement_speed modifier add move 0.05 add_value
attribute @s minecraft:jump_strength modifier add jump 0.05 add_value
attribute @s minecraft:friction_modifier modifier add friction -0.75 add_value