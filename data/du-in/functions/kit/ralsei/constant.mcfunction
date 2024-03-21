execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/ralsei/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#Armor#
execute if entity @s[tag=armor] run function du-in:kit/ralsei/armor

#Weapons#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:wooden_sword[custom_name='{"text":"Scarf","color":"gray","bold":true}',custom_model_data=119,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4,operation:"add_value",uuid:[I;-642737571,446644550,-1245639932,307175481],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;668712849,-1993060669,-1160341246,-1661154571],slot:"mainhand"}],show_in_tooltip:false}] 1

execute unless entity @s[scores={secCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.1 with minecraft:warped_fungus_on_a_stick[custom_name='{"text":"Heal Prayer","color":"#e31e4f","bold":true}',lore=['{"text":"Right click to use!","color":"green","bold":true}'],custom_model_data=2019,unbreakable={show_in_tooltip:false}] 1

#TP Meter Item
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={triCount=1}] run function du-in:kit/ralsei/tp/item


#Track number of secondaries and Tp meters in inventory
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0
execute store result score @s[tag=!stolen] triCount run clear @s[tag=!kitMenu] gunpowder 0

#Ability#
execute if entity @s[level=1] run function du-in:kit/ralsei/ability/item

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/ralsei/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/ralsei/ability/void/init

#Secondary Ability Use
execute if entity @s[tag=secKitActions] run function du-in:kit/ralsei/prayer/init

#TP Counting and sounds
execute if entity @s[tag=!void,scores={ralseiTP=..119},tag=!stolen] if entity @a[distance=0.05..3,gamemode=!spectator] unless score @a[distance=0.05..3,tag=playing,gamemode=!spectator,limit=1] team = @s team run function du-in:kit/ralsei/tp/count
execute if entity @s[tag=void,scores={ralseiTP=..119},tag=!stolen] if entity @e[type=skeleton,distance=0.05..3,tag=gonerThing] run function du-in:kit/ralsei/tp/count

    #Max TP
    execute if entity @s[scores={ralseiTP=120..},tag=!maxTP,tag=!stolen] run function du-in:kit/ralsei/tp/max


#Attributes#
execute if entity @s[tag=!stolen] run attribute @s minecraft:generic.max_health base set 14
attribute @s[tag=!stolen] generic.movement_speed base set 0.145
#.1225
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.01

execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/small