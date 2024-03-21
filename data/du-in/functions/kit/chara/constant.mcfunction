#Sounds#
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/chara/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/chara/sounds/jump

#Activate Ability
execute if entity @s[tag=kitActions] run function du-in:kit/chara/ability/init

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!stolen,tag=!teamDead] run function du-in:kit/chara/weapon

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/chara/armor

#Ability item#
execute if entity @s[level=1] run function du-in:kit/chara/ability/item

#Ability duration
execute if entity @s[scores={charaTimer=0..}] run function du-in:kit/chara/ability/head



#Speed and Weight
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.13
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.035

#Size
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 0.9
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 4.25
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set -2


#A shame the one who looks for me has not yet found me.
#Maybe, you and I, can find him first.