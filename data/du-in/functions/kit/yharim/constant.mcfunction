#SOUNDS#
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/yharim/sounds/hit
execute if entity @s[tag=!stolen,scores={step=175..}] run function du-in:kit/yharim/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=175..}] run function du-in:kit/yharim/sounds/step

#Weapons#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:stone_sword{display:{Name:"[{\"text\":\"Yharim's Ultisword\",\"color\":\"#e31e4f\",\"bold\":true,\"italic\":false}]"},HideFlags:5,Unbreakable:1b,CustomModelData:115,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={secCount=1}] run function du-in:kit/yharim/rage_meter

#Track Secondary Item
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0

#Activate Secondary#
execute if entity @s[tag=secKitActions,tag=!stolen] run function du-in:kit/yharim/secondary

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/yharim/armor

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Yharim\'s Stimulants","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}]','[{"text":"Increase defense and resistance","color":"dark_gray"}]','{"text":"to tank damage","color":"dark_gray"}','{"text":"","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:310,weaponItem:1b}

execute if entity @s[tag=kitActions] run function du-in:kit/yharim/ability/init

#Add Yharim Rage#
execute if entity @s[gamemode=!spectator,tag=!rageMeter,tag=!stolen] if entity @a[distance=0.05..3.5,tag=playing,gamemode=!spectator] unless score @a[distance=0.05..3.5,tag=playing,gamemode=!spectator,limit=1] team = @s team run scoreboard players add @s yharimRage 1

#Fully Charge Rage#
execute if entity @s[scores={yharimRage=200..},tag=!rageMeter] run function du-in:kit/yharim/charged_rage

#tag @s[scores={yharimRage=..199}] remove rageMeter

clear @s[scores={yharimRage=40..},tag=!stolen] minecraft:warped_fungus_on_a_stick{CustomModelData:2006}
clear @s[scores={yharimRage=80..},tag=!stolen] minecraft:warped_fungus_on_a_stick{CustomModelData:2010}
clear @s[scores={yharimRage=120..},tag=!stolen] minecraft:warped_fungus_on_a_stick{CustomModelData:2011}
clear @s[scores={yharimRage=160..},tag=!stolen] minecraft:warped_fungus_on_a_stick{CustomModelData:2012}

#Attributes#
execute unless entity @s[scores={yharimTimer=1..}] run attribute @s[tag=!stolen] generic.knockback_resistance base set 0.07

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125

#IT IS TRULY
#A MIRACLE
#THAT THE TERRARIAN
#KEEPS HIS DERPRESSION
#IN CHECK
#HIS RAGE
#COULD DESTROY US
#ONE HUNDRED TIMES OVER
#TRULY
#A MIRACLE