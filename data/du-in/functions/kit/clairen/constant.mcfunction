execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/clairen/sounds/hit


# Weapon #
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={weapCount=1}] run item replace entity @s hotbar.0 with wooden_sword{display:{Name:'{"text":"Phasesaber","color":"#BA0000","bold":true}'},Enchantments:[{id:"minecraft:knockback",lvl:1}],HideFlags:4,Unbreakable:1b,CustomModelData:114,weaponItem:1b,clairenSaber:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.5,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0

# Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/clairen/armor

# Ability #
execute if entity @s[tag=kitActions] run function du-in:kit/clairen/ability/init

item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Energy Field","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Creates and energy field","color":"dark_gray"}','{"text":"blocking projectiles and","color":"dark_gray"}','{"text":"strengthening all within.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:417,weaponItem:1b}


attribute @s[tag=!stolen] generic.movement_speed base set 0.14
#0.125
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.0375