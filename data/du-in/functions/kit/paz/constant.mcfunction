#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/paz/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/paz/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/paz/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/paz/sounds/jump

#Give Weapon
execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/paz/weapon

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/paz/armor

# ITEM #
execute if entity @s[level=1] run function du-in:kit/paz/ability/item

#Run ability#
execute if entity @s[tag=kitActions] run function du-in:kit/paz/ability/init

#Base Speed#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.1375
#Base Weight#
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.35

#     GET SHIT ON      #
#   ABSOLUTE SHIITER   #