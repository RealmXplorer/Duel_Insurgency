#SOUNDS#
execute if entity @s[scores={step=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#ARMOR#
execute if entity @s[tag=armor] run function du-in:kit/impostor/armor


tag @s[tag=!stolen] add sus

execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/impostor/weapon

#Ability Item#
execute if entity @s[level=1] run function du-in:kit/impostor/ability/item

#Use ability
execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/impostor/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/impostor/ability/void/init

#IMPOSTER#
attribute @s minecraft:generic.movement_speed base set 0.13
attribute @s generic.knockback_resistance base set 0.03

execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/small

#Test Impostor Meeting Spot
execute unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove badBlock

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #minecraft:liquid rotated as @s run tag @s add badBlock

#THIS SPECIMEN
#STOKES MY CURIOUSITY
#PERHAPS I CAN STUDY IT
#FURTHER
