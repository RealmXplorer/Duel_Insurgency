execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/papyrus/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/papyrus/sounds/jump

#CONSTANTS#
execute if entity @e[type=armor_stand,scores={papyrusHitTimer=-1..}] run function du-in:kit/papyrus/stand

# PAPYRUS #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/papyrus/armor

execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:bone{display:{Name:"{\"text\":\"Really Cool Normal Attack\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},Enchantments:[{id:"minecraft:knockback",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:2.75,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:40,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],CustomModelData:100,HideFlags:2,weaponItem:1b} 1

#Ability Item
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Spaghetti","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Summons bones from the earth","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:112,weaponItem:1b}

#Ability function
execute if entity @s[tag=kitActions] run function du-in:kit/papyrus/ability/init

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
#.1025
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.05