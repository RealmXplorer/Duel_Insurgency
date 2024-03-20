execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/clairen/sounds/hit


# Weapon #
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={weapCount=1}] run function du-in:kit/clairen/weapon

# Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/clairen/armor

# Ability #
execute if entity @s[tag=kitActions] run function du-in:kit/clairen/ability/init

#Ability item#
execute if entity @s[level=1] run function du-in:kit/clairen/ability/item

attribute @s[tag=!stolen] generic.movement_speed base set 0.14
#0.125
effect give @s[predicate=!du-in:effect/has_night_vision,tag=!stolen] minecraft:night_vision infinite 100 true
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.03