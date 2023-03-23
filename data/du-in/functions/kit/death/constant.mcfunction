#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/death/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/death/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/death/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/death/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/death/ability/item

#WEAPON#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/death/weapon


#Check for if they have secondary
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0

execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={secCount=1}] unless entity @s[scores={deathSwapTimer=1..}] run function du-in:kit/death/secondary/item

#Weapon switch cooldown timer
execute if entity @s[scores={deathSwapTimer=-1..}] run function du-in:kit/death/secondary/timer

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/death/ability/init

execute if entity @s[tag=secKitActions,tag=!stolen] run function du-in:kit/death/secondary/switch

#Base movement speed#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125

#Base Weight
attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0.23