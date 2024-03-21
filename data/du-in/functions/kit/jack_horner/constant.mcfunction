#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/jack_horner/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/jack_horner/armor

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/jack_horner/weapon

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/jack_horner/ability/item

#Use ability
execute if entity @s[tag=kitActions,tag=!magicBag,tag=!void] run function du-in:kit/jack_horner/ability/init
execute if entity @s[tag=kitActions,tag=!magicBag,tag=void] run function du-in:kit/jack_horner/ability/void_init
execute if entity @s[tag=kitActions,tag=magicBag] run function du-in:kit/jack_horner/ability/init_magic

execute if entity @s[tag=poisonApple] run function du-in:kit/jack_horner/ability/poison_apple/run

execute if entity @s[tag=unicornBow] run function du-in:kit/jack_horner/ability/unicorn_bow/run

execute if entity @s[tag=asgoreTrident] run function du-in:kit/jack_horner/ability/trident/run

#ATTRIBUTES#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.35

execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/bigger