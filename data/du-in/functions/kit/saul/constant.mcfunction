#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/saul/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/saul/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/saul/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#
tag @a[tag=!saul,tag=!legMusicOff,tag=!void,tag=!ctfIngame,tag=!cqIngame] add saul

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/saul/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/saul/ability/item

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:bone{display:{Name:"{\"text\":\"Book of Laws\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:3,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:40,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],CustomModelData:105,HideFlags:2,weaponItem:1b} 1

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/saul/ability/init

#Base movement speed#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.1375

#Base Weight
attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0.35