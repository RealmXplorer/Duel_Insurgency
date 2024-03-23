execute if entity @s[scores={hit=5..}] run function du-in:kit/frisk/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/frisk/sounds/jump

# FRISK #
# execute if entity @s[tag=armor] run function du-in:kit/frisk/armor 

execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/frisk/weapon

attribute @s minecraft:generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.0325
execute unless entity @a[tag=partyLeader,tag=scaleMode] run function du-in:kit/all/size/small

#THE VERY POWER
#I STUDIED
#THE VERY POWER
#I DIED FOR
#PERHAPS I TOO
#CAN CONTINUE