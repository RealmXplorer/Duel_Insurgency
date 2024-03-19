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
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='[{"text":"«EPIC» ","color":"gold","bold":true,"italic":true},{"text":"Peep the Horror","color":"red","bold":true,"italic":false}]',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Someone will die","color":"dark_gray"}','{"text":"","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=2002]

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/jerma/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/jerma/ability/void/init

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.11
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.04
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 0.8
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 4.15
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set -3

#WHAT THE FUCK#