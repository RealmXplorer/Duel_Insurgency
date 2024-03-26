#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/template/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/template/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/template/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/template/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/template/ability/item

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/template/weapon

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/template/ability/init

#Base movement speed#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.1375

#Base Weight
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.35