execute if entity @s[scores={hit=5..}] run function du-in:kit/flowey/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/flowey/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/flowey/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/flowey/sounds/jump

# FLOWEY # - Now in kit/all/armor/armor
# execute if entity @s[tag=armor] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/flowey/armor

#WEAPON COUNT#
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/flowey/weapon

#ATTRIBUTES
attribute @s minecraft:generic.movement_speed base set 0.13
attribute @s generic.knockback_resistance base set 0.06
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/tiny



#MY EXPERIMENTS
#HAVE FAILED YOU
#WHAT HAVE THEY 
#DONE TO YOU