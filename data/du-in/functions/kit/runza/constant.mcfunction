#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/runza/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"The Dodecaburger","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:121,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

#Ability Item#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"«EPIC» ","color":"gold","bold":"true","italic":"true"},{"text":"Temperature Tuesday","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"FREE DEALS!","color":"dark_gray"}','{"text":"","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:2005,weaponItem:1b}

execute if entity @s[tag=kitActions] run function du-in:kit/runza/ability/init

#RUNZA#
execute if entity @s[tag=armor,tag=!bigChungus] run function du-in:kit/runza/armor
#RUNZA#
#execute if entity @s[tag=killLine] run function du-in:kit/runza/sounds/line

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.1075
attribute @s generic.knockback_resistance base set 0.04