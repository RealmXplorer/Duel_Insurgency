#SOUNDS#
execute if entity @s[scores={step=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#ARMOR#
execute if entity @s[tag=armor] run function du-in:kit/impostor/armor


tag @s[tag=!stolen] add sus

execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"Suspicious Knife","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:119,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

#Ability Item#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"«EPIC» ","color":"gold","bold":"true","italic":"true"},{"text":"Emergency Meeting","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"sus","color":"dark_gray"}','{"text":"","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:2003,weaponItem:1b}

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/impostor/ability/init

#IMPOSTER#
#execute if entity @s[tag=killLine] run function du-in:kit/impostor/sounds/line
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.13
#.105
attribute @s[tag=!pussFear] generic.knockback_resistance base set 0.15
#attribute @s minecraft:generic.attack_damage base set 3.0
#attribute @s minecraft:generic.attack_speed base set 40

execute unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove badBlock

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #minecraft:liquid rotated as @s run tag @s add badBlock

#THIS SPECIMEN
#STOKES MY CURIOUSITY
#PERHAPS I CAN STUDY IT
#FURTHER