#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/yoda/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/yoda/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/yoda/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/yoda/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/yoda/ability/item

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with stone_sword{display:{Name:'{"text":"Saber of the Grandmaster","color":"#21ad28","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:113,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:3.75,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-2.15,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]}],weaponItem:1b} 1

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/yoda/ability/init

execute if entity @s[scores={yodaTimer=0..}] run function du-in:kit/yoda/ability/timer

#Base movement speed#
attribute @s[tag=!stolen] generic.movement_speed base set 0.1525

#Base Size
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 0.8
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.block_interaction_range base set 4.15
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set -3

#Base Weight
attribute @s[tag=!stolen] generic.knockback_resistance base set 0