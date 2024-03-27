execute if entity @s[scores={hit=5..}] run function du-in:kit/papyrus/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/papyrus/sounds/jump

# Armor # - Now in kit/all/armor/armor
# execute if entity @s[tag=armor] run function du-in:kit/papyrus/armor

#Weapon
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/papyrus/weapon

#ATTRIBUTES
attribute @s minecraft:generic.movement_speed base set 0.1275
attribute @s generic.knockback_resistance base set 0.05