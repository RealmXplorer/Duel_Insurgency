execute if entity @s[scores={hit=5..}] run function du-in:kit/jerma/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Jerma#
#execute if entity @s[tag=armor] run function du-in:kit/jerma/armor

tag @s add sus

scoreboard players add @s[scores={ventCooldown=..61}] ventCooldown 1

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead ]run function du-in:kit/jerma/weapon

execute if entity @s[tag=secKitActions] run function du-in:kit/jerma/secondary/eat_onion

#Ability#
# execute if entity @s[level=1] run function du-in:kit/jerma/ability/item

# execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/jerma/ability/init
# execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/jerma/ability/void/init

#Attributes#
attribute @s minecraft:generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.04

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/tiny

#WHAT THE FUCK#