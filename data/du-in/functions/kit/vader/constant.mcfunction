execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/vader/sounds/hit

execute if entity @s[tag=!stolen] run function du-in:kit/vader/sounds/breathactive

#EFFECT#
#effect give @s[tag=!stolen] minecraft:slowness 1 0 true

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with stone_sword{display:{Name:'{"text":"Saber of the Dark Lord","color":"#991717","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:100,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:4.5,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-2,Operation:0,UUID:[I;1008240078,1007044323,1045695083,1042762522]}],weaponItem:1b} 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/vader/armor

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Force Grab","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I find your lack of","color":"dark_gray"}','{"text":"faith disturbing.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:117,weaponItem:1b}

execute if entity @s[tag=kitActions] run function du-in:kit/vader/ability/init

#Attribute#
#attribute @s[tag=!stolen] generic.movement_speed base set 0.095
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
#.1
attribute @s[tag=!stolen] minecraft:generic.armor_toughness base set 1.5
attribute @s[tag=!stolen] minecraft:generic.knockback_resistance base set 0.175

execute if entity @s[scores={Health=18..},tag=!stolen] run item replace entity @s hotbar.8 with wither_rose{display:{Name:'{"text":"Your Life","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"As your body weakens you feel your strength growing","color":"red","italic":false}']},weaponItem:1b} 6
execute if entity @s[scores={Health=15..17},tag=!stolen] run item replace entity @s hotbar.8 with wither_rose{display:{Name:'{"text":"Your Life","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"As your body weakens you feel your strength growing","color":"red","italic":false}']},weaponItem:1b} 5
execute if entity @s[scores={Health=10..11},tag=!stolen] run item replace entity @s hotbar.8 with wither_rose{display:{Name:'{"text":"Your Life","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"As your body weakens you feel your strength growing","color":"red","italic":false}']},weaponItem:1b} 4
execute if entity @s[scores={Health=5..9},tag=!stolen] run item replace entity @s hotbar.8 with wither_rose{display:{Name:'{"text":"Your Life","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"As your body weakens you feel your strength growing","color":"red","italic":false}']},weaponItem:1b} 3
execute if entity @s[scores={Health=3..5},tag=!stolen] run item replace entity @s hotbar.8 with wither_rose{display:{Name:'{"text":"Your Life","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"With your life drained, smite down your foes","color":"red","italic":false}']},weaponItem:1b} 2
execute if entity @s[scores={Health=..2},tag=!stolen] run item replace entity @s hotbar.8 with wither_rose{display:{Name:'{"text":"Your Life","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"This the last stand, take revenge on your enemies","color":"red","italic":false}']},weaponItem:1b} 1

execute if entity @s[scores={Health=18..},tag=!stolen] run attribute @s minecraft:generic.attack_damage base set 1
execute if entity @s[scores={Health=13..17},tag=!stolen] run attribute @s minecraft:generic.attack_damage base set 1.25
execute if entity @s[scores={Health=10..12},tag=!stolen] run attribute @s minecraft:generic.attack_damage base set 1.50
execute if entity @s[scores={Health=6..9},tag=!stolen] run attribute @s minecraft:generic.attack_damage base set 1.75
execute if entity @s[scores={Health=3..5},tag=!stolen] run attribute @s minecraft:generic.attack_damage base set 2
execute if entity @s[scores={Health=..2},tag=!stolen] run attribute @s minecraft:generic.attack_damage base set 2.25