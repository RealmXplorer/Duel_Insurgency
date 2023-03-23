#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/puss/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/puss/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/puss/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump


# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/puss/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/puss/ability/item

#WEAPON#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/puss/weapon

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/puss/ability/init

execute if entity @s[tag=secKitActions,tag=!stolen] run function du-in:kit/puss/secondary/switch

execute store result score @s[tag=!stolen,scores={pussDeaths=4..}] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0

execute if entity @s[tag=!stolen,tag=!teamDead,scores={pussDeaths=4..}] unless entity @s[scores={secCount=1}] unless entity @s[scores={pussSwapTimer=1..}] run function du-in:kit/puss/secondary/item

execute if entity @s[scores={pussSwapTimer=-1..}] run function du-in:kit/puss/secondary/timer

#Base movement speed#
attribute @s[tag=!stolen] generic.movement_speed base set 0.15

#Base Weight
attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0