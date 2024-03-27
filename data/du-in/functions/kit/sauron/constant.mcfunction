#Sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/sauron/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/sauron/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/sauron/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/sauron/sounds/jump

#ARMOR#
# execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/sauron/armor

#ABILITY#
# execute if entity @s[level=1] run function du-in:kit/sauron/ability/item

#Ability start
#execute if entity @s[tag=kitActions] run function du-in:kit/sauron/ability/init

#WEAPON#
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/sauron/weapon

execute if entity @s[scores={sauronTimer=0..}] run function du-in:kit/sauron/ability/timer

#Attributes
execute if entity @s[tag=!hasRing] run function du-in:kit/sauron/weak_attributes
execute if entity @s[tag=hasRing] run function du-in:kit/sauron/ring_attributes
