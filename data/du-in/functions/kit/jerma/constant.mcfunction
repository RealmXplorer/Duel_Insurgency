execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/jerma/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#Jerma#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/jerma/armor

#execute if entity @s[tag=killLine] run function du-in:kit/jerma/sounds/lines

tag @s[tag=!stolen] add sus

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:stone_sword[custom_name='{"text":"Serial Killer Knife","color":"gray","bold":true}',lore=['{"text":"The power of all serial killers combined!","color":"gray","bold":true}'],unbreakable={show_in_tooltip:false},custom_model_data=119,attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4.75,operation:"add_value",uuid:[I;-1676859321,1954169104,-1445761286,746181978],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;1795934236,490032927,-1398378028,1812706020],slot:"mainhand"}],show_in_tooltip:false}] 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

execute if entity @s[tag=secKitActions] run function du-in:kit/jerma/secondary/eat_onion

#Ability#
execute if entity @s[level=1] run function du-in:kit/jerma/ability/item

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/jerma/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/jerma/ability/void/init

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.04

execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/tiny

#WHAT THE FUCK#