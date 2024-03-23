execute if entity @s[scores={jump=1..}] run function du-in:kit/jump
execute if entity @s[scores={hit=5..}] run function du-in:kit/clairen/sounds/hit

# Weapon #
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/clairen/weapon

# Armor #
#execute if entity @s[tag=armor] run function du-in:kit/clairen/armor

#ATTRIBUTES#
attribute @s generic.movement_speed base set 0.14
effect give @s[predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true
attribute @s generic.knockback_resistance base set 0.03