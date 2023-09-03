execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/ralsei/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#Armor#
execute if entity @s[tag=armor] run function du-in:kit/ralsei/armor

#Weapons#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:wooden_sword{display:{Name:'{"text":"Scarf","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:119,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

execute unless entity @s[scores={secCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Heal Prayer","color":"#e31e4f","bold":true}',Lore:['{"text":"Right click to use!","color":"green","bold":true}']},HideFlags:5,Unbreakable:1b,Enchantments:[{}],CustomModelData:2019,weaponItem:1b,secondItem:1b} 1

#TP Meter Item
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={triCount=1}] run function du-in:kit/ralsei/tp/item

#execute if entity @s[scores={ralseiTP=30..},tag=!stolen] run clear @s minecraft:gunpowder{CustomModelData:2014}
#execute if entity @s[scores={ralseiTP=60..},tag=!stolen] run clear @s minecraft:gunpowder{CustomModelData:2015}
#execute if entity @s[scores={ralseiTP=90..},tag=!stolen] run clear @s minecraft:gunpowder{CustomModelData:2016}
#execute if entity @s[scores={ralseiTP=..119},tag=!stolen] run clear @s minecraft:gunpowder{CustomModelData:2018}

#Track number of secondaries and Tp meters in inventory
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0
execute store result score @s[tag=!stolen] triCount run clear @s[tag=!kitMenu] gunpowder 0

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Lullaby","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Puts nearby enemies to sleep","color":"dark_gray"}','{"text":"","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:132,weaponItem:1b}

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/ralsei/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/ralsei/ability/void/init

#Secondary Ability Use
execute if entity @s[tag=secKitActions] run function du-in:kit/ralsei/prayer/init

#TP Counting and sounds
execute if entity @s[tag=!void,scores={ralseiTP=..119},tag=!stolen] if entity @a[distance=0.05..3,gamemode=!spectator] unless score @a[distance=0.05..3,tag=playing,gamemode=!spectator,limit=1] team = @s team run function du-in:kit/ralsei/tp/count
execute if entity @s[tag=void,scores={ralseiTP=..119},tag=!stolen] if entity @e[type=skeleton,distance=0.05..3,tag=gonerThing] run function du-in:kit/ralsei/tp/count

    #Max TP
    execute if entity @s[scores={ralseiTP=120..},tag=!maxTP,tag=!stolen] run function du-in:kit/ralsei/tp/max

#execute if entity @s[scores={TPSound=10..},gamemode=adventure] run playsound minecraft:ralsei.graze master @a ~ ~ ~ 1 1
#scoreboard players reset @s[scores={TPSound=10..}] TPSound


#Attributes#
execute if entity @s[tag=!stolen] run attribute @s minecraft:generic.max_health base set 14
attribute @s[tag=!stolen] generic.movement_speed base set 0.145
#.1225
attribute @s[tag=!pussFear,tag=!parry,tag=!stolen] generic.knockback_resistance base set 0.01