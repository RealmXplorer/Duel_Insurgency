#Sounds#
execute if entity @s[scores={hit=5..}] run function du-in:kit/chara/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/chara/sounds/jump

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/chara/weapon

#Armor#
#execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/chara/armor


#Speed and Weight
attribute @s minecraft:generic.movement_speed base set 0.13
attribute @s generic.knockback_resistance base set 0.035

#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/small

#A shame the one who looks for me has not yet found me.
#Maybe, you and I, can find him first.