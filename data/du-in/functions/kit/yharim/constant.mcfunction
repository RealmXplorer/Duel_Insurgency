#SOUNDS#
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/yharim/sounds/hit
execute if entity @s[tag=!stolen,scores={step=175..}] run function du-in:kit/yharim/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=175..}] run function du-in:kit/yharim/sounds/step

#Weapons#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:stone_sword{display:{Name:"[{\"text\":\"Yharim's Ultisword\",\"color\":\"#e31e4f\",\"bold\":true,\"italic\":false}]"},HideFlags:5,Unbreakable:1b,CustomModelData:115,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={secCount=1}] run function du-in:kit/yharim/secondary/rage_meter

#Track Secondary Item
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0

#Activate Secondary#
execute if entity @s[tag=secKitActions,tag=!stolen] run function du-in:kit/yharim/secondary

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/yharim/armor

#Ability#
execute if entity @s[level=1] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Yharim\'s Stimulants","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}]','[{"text":"Increase defense and resistance","color":"dark_gray"}]','{"text":"to tank damage","color":"dark_gray"}','{"text":"","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:310,weaponItem:1b}

execute if entity @s[tag=kitActions] run function du-in:kit/yharim/ability/init

execute if entity @s[scores={yharimTimer=0..}] run function du-in:kit/yharim/ability/timer

#Add Yharim Rage#
execute if entity @s[gamemode=!spectator,tag=!rageMeter,tag=!stolen,tag=!void] if entity @a[distance=0.05..3.5,tag=playing,gamemode=!spectator] unless score @a[distance=0.05..3.5,tag=playing,gamemode=!spectator,limit=1] team = @s team run function du-in:kit/yharim/secondary/charge
execute if entity @s[gamemode=!spectator,tag=!rageMeter,tag=!stolen,tag=void] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..3.5] run function du-in:kit/yharim/secondary/charge


#Attributes#
execute unless entity @s[scores={yharimTimer=1..}] run attribute @s[tag=!stolen,tag=!pussFear,tag=!parry] generic.knockback_resistance base set 0.07

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