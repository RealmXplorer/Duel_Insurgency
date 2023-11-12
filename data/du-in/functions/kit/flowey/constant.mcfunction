execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/flowey/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/flowey/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/flowey/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/flowey/sounds/jump

# FLOWEY #
execute if entity @s[tag=armor,tag=!stolen] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/flowey/armor

execute if entity @s[level=1] run function du-in:kit/flowey/ability/item

#Start ability#
execute if entity @s[tag=kitActions] run function du-in:kit/flowey/ability/init

#Burrowing ability
execute if entity @s[scores={floweyHitTimer=-1..},tag=!lose] run function du-in:kit/flowey/ability/burrow

#WEAPON COUNT#
execute if entity @s[tag=!teamDead,tag=!stolen,tag=!pussFear] unless entity @s[scores={weapCount=1}] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/flowey/weapon

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] #du-in:weapon 0

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.13
#.105
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.06

#MY EXPERIMENTS
#HAVE FAILED YOU
#WHAT HAVE THEY 
#DONE TO YOU