#SOUNDS#
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/yharim/sounds/hit
execute if entity @s[tag=!stolen,scores={step=175..}] run function du-in:kit/yharim/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=175..}] run function du-in:kit/yharim/sounds/step

#Weapons#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:stone_sword[custom_name='[{"text":"Yharim\'s Ultisword","color":"#e31e4f","bold":true,"italic":false}]',custom_model_data=115,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4,operation:"add_value",uuid:[I;-630440244,-997046647,-1606288818,1185157089],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;563925252,835208961,-1119387443,-1654645792],slot:"mainhand"}],show_in_tooltip:false}] 1
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={secCount=1}] run function du-in:kit/yharim/secondary/rage_meter

#Track Secondary Item
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0

#Activate Secondary#
execute if entity @s[tag=secKitActions,tag=!stolen] run function du-in:kit/yharim/secondary/init

execute if entity @s[scores={yharimRageDuration=0..}] run function du-in:kit/yharim/secondary/in_rage

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/yharim/armor

#Ability#
execute if entity @s[level=1] run function du-in:kit/yharim/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/yharim/ability/init

execute if entity @s[scores={yharimTimer=0..}] run function du-in:kit/yharim/ability/timer

#Add Yharim Rage#
execute if entity @s[gamemode=!spectator,tag=!enraged,tag=!rageMeter,tag=!stolen,tag=!void] if entity @a[distance=0.05..3.5,tag=playing,gamemode=!spectator] unless score @a[distance=0.05..3.5,tag=playing,gamemode=!spectator,limit=1] team = @s team run function du-in:kit/yharim/secondary/charge
execute if entity @s[gamemode=!spectator,tag=!enraged,tag=!rageMeter,tag=!stolen,tag=void] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..3.5] run function du-in:kit/yharim/secondary/charge


#Attributes#
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.07

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125

execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 1.2
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 5
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set 4
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] generic.attack_damage base set 1.5

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