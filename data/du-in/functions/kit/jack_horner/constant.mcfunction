#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/jack_horner/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jack_horner/sounds/jump

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/jack_horner/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/jack_horner/ability/item

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/jack_horner/ability/init

#Base movement speed#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135

#Base Weight
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.35