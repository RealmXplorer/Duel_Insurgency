execute if entity @s[scores={hit=5..}] run function du-in:kit/sans/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/sans/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/sans/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/sans/sounds/jump

#Armor #
#execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/sans/armor

# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/sans/weapon

##Base KB Resistance is 0.
attribute @s generic.knockback_resistance base set 0
attribute @s generic.movement_speed base set 0.155
attribute @s minecraft:generic.max_health base set 10
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/small