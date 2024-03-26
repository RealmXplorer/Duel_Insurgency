execute if entity @s[scores={hit=5..}] run function du-in:kit/slime/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/slime/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/slime/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/slime/sounds/jump

# SLIME #
#execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/slime/armor

#Weapon
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/slime/weapon

#ATTRIBUTES#
attribute @s minecraft:generic.jump_strength base set 0.51
attribute @s generic.knockback_resistance base set 0.015

#Health size
execute if entity @s[scores={Health=16..}] run function du-in:kit/slime/size/size_one

execute if entity @s[scores={Health=12..15}] run function du-in:kit/slime/size/size_two

execute if entity @s[scores={Health=8..11}] run function du-in:kit/slime/size/size_three

execute if entity @s[scores={Health=4..7}] run function du-in:kit/slime/size/size_four

execute if entity @s[scores={Health=..3}] run function du-in:kit/slime/size/size_five
