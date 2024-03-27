execute if entity @s[scores={hit=5..}] run function du-in:kit/palps/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Weapons#
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/palps/weapon

#Armor#
#execute if entity @s[tag=armor] run function du-in:kit/palps/armor

#Attributes#
attribute @s minecraft:generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.04

execute if entity @s[scores={healthTimer=220..}] run scoreboard players add @s regenTimer 1

#HE LISTENS
#ONLY TO THE DARK
#THE DEEP
#DEEP
#DARK
#HE WILL LISTEN
#TO ME