execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/skeleton/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/skeleton/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/skeleton/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/skeleton/sounds/jump

# skeleton #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/skeleton/armor

#Ability
execute if entity @s[level=1] run function du-in:kit/skeleton/ability/item
execute if entity @s[tag=kitActions] run function du-in:kit/skeleton/ability/init

#Weapon
execute if entity @s[tag=!teamDead,tag=!stolen,tag=!pussFear] unless entity @s[scores={weapCount=1}] run function du-in:kit/skeleton/weapon

#Magma timer
execute if entity @s[scores={magmaTimer=-99..}] run function du-in:kit/skeleton/ability/timer

#ATT#
attribute @s[tag=!stolen] minecraft:generic.jump_strength base set 0.51

attribute @s[tag=!stolen] generic.knockback_resistance base set 0.015
