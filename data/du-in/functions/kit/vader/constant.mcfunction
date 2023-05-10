execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/vader/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#EFFECT#
#effect give @s[tag=!stolen] minecraft:slowness 1 0 true

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with stone_sword{display:{Name:'{"text":"Saber of the Dark Lord","color":"#991717","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:100,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-2,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]}],weaponItem:1b} 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/vader/armor

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Force Grab","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I find your lack of","color":"dark_gray"}','{"text":"faith disturbing.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:117,weaponItem:1b}

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/vader/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/vader/ability/void/init

#Attribute#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
attribute @s[tag=!stolen] minecraft:generic.armor_toughness base set 1.5
attribute @s[tag=!stolen] minecraft:generic.knockback_resistance base set 0.175

#Breathing and berserk
execute if entity @s[tag=!stolen] run function du-in:kit/vader/berserk