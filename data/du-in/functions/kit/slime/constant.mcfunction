execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/slime/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/slime/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/slime/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/slime/sounds/jump

# SLIME #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/slime/armor

#Ability
execute if entity @s[level=1] run function du-in:kit/slime/ability/item
execute if entity @s[tag=kitActions] run function du-in:kit/slime/ability/init

#Weapon
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen,tag=!pussFear] run function du-in:kit/slime/weapon

#Magma timer
execute if entity @s[scores={magmaTimer=-99..}] run function du-in:kit/slime/ability/timer

#ATT#
attribute @s[tag=!stolen] minecraft:generic.jump_strength base set 0.51

attribute @s[tag=!stolen] generic.knockback_resistance base set 0.015

#Health size
execute if entity @s[scores={Health=16..},tag=!stolen,tag=!skrunkMode] run function du-in:kit/slime/size/size_one

execute if entity @s[scores={Health=12..15},tag=!stolen,tag=!skrunkMode] run function du-in:kit/slime/size/size_two

execute if entity @s[scores={Health=8..11},tag=!stolen,tag=!skrunkMode] run function du-in:kit/slime/size/size_three

execute if entity @s[scores={Health=4..7},tag=!stolen,tag=!skrunkMode] run function du-in:kit/slime/size/size_four

execute if entity @s[scores={Health=..3},tag=!stolen,tag=!skrunkMode] run function du-in:kit/slime/size/size_five
