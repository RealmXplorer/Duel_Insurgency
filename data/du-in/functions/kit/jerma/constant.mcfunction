execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/jerma/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#Jerma#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/jerma/armor

#execute if entity @s[tag=killLine] run function du-in:kit/jerma/sounds/lines

tag @s[tag=!stolen] add sus

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"Serial Killer Knife","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:119,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

execute if entity @s[tag=secKitActions] run function du-in:kit/jerma/secondary/eat_onion

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"«EPIC» ","color":"gold","bold":true,"italic":true},{"text":"Peep the Horror","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Someone will die","color":"dark_gray"}','{"text":"","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:2002,weaponItem:1b}

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/jerma/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/jerma/ability/void/init

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.11
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.04
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 0.8
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.block_interaction_range base set 4.15
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set -3

#WHAT THE FUCK#