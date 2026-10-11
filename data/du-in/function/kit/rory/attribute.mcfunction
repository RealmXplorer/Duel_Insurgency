#ATTRIBUTES
attribute @s minecraft:movement_speed base set 0.18
attribute @s knockback_resistance base set 0.035
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/big

#attribute @s minecraft:air_drag_modifier modifier add air_drag -1.25 add_value
#attribute @s minecraft:friction_modifier modifier add friction -0.55 add_value

# attribute @s minecraft:air_drag_modifier base set -0.5
# effect give @s minecraft:slow_falling infinite 1 true
# attribute @s minecraft:jump_strength base set 0.47
# attribute @s minecraft:friction_modifier base set -0.4

attribute @s minecraft:air_drag_modifier base set -0.3
effect give @s minecraft:slow_falling infinite 0 true
attribute @s minecraft:jump_strength base set 0.45
attribute @s minecraft:friction_modifier base set -0.2