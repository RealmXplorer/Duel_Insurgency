execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/spider/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/spider/sounds/jump

#EFFECTS#

# SPIDER #
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"Webbed Sword","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:105,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

execute if entity @s[tag=kitActions,tag=!void] run function du-in:kit/spider/ability/init
execute if entity @s[tag=kitActions,tag=void] run function du-in:kit/spider/ability/void/init

execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/spider/armor

item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Web Blast","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Shoots a blast of webs ","color":"dark_gray"}','{"text":"that slows nearby ","color":"dark_gray"}','{"text":"opponents.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:100,weaponItem:1b}


attribute @s[tag=!stolen] generic.movement_speed base set 0.135
#.1225
attribute @s[tag=!stolen,tag=!pussFear,tag=!parry] generic.knockback_resistance base set 0.03