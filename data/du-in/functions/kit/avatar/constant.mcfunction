execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/avatar/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/avatar/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/avatar/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/avatar/sounds/jump

#ARMOR#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/avatar/armor

#ABILITY#
execute if entity @s[level=1] run function du-in:kit/avatar/ability/item

#Ability start
execute if entity @s[tag=kitActions] run function du-in:kit/avatar/ability/init

#WEAPON#
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!stolen,tag=!teamDead] run function du-in:kit/avatar/weapon

#ATTRIBUTES
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.1325
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.0375
