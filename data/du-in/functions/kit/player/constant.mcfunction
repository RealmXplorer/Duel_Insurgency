#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/player/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#CONSTANTS#
execute if score #main titleTimer2 matches 21 run item replace entity @s hotbar.8 with minecraft:arrow 2

# Armor # - Moved to kit/all/armor/armor
#execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/player/armor

#WEAPONS#
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/player/weapon
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/player/bow

#TEST BOW COUNT#
execute store result score @s secCount run clear @s bow 0

#ATTRIBUTES#
attribute @s minecraft:generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.04

#SO THIS POWER...
#OF DETERMINATION
#IT IS NOT UNIQUE TO OUR WORLD?
#HOW CURIOUS
#VERY
#VERY
#CURIOUS