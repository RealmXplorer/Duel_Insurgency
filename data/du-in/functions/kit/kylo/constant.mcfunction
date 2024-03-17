execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/kylo/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#ARMOR#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/kylo/armor

#Ability Item#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Force Freeze","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I\'ll show you","color":"dark_gray"}','{"text":"the Dark Side.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:116,du-in:weaponItem}

#Ability function#
execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/kylo/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/kylo/ability/void/init

#WEAPON#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with wooden_sword{display:{Name:'{"text":"Crossguard Lightsaber","color":"#BA0000","bold":true}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:4.25,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-2,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]}],HideFlags:5,Unbreakable:1b,CustomModelData:100,Enchantments:[{}],du-in:weaponItem} 1
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0

#Attributes#
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.02
attribute @s[tag=!stolen] generic.movement_speed base set 0.145
