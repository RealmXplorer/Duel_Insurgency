#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/yharim/sounds/hit
execute if entity @s[scores={step=175..}] run function du-in:kit/yharim/sounds/step
execute if entity @s[scores={sprint=175..}] run function du-in:kit/yharim/sounds/step

#Weapons#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead] hotbar.0 with minecraft:stone_sword[custom_name='[{"text":"Yharim\'s Ultisword","color":"#e31e4f","bold":true,"italic":false}]',custom_model_data=115,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4,operation:"add_value",uuid:[I;-630440244,-997046647,-1606288818,1185157089],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;563925252,835208961,-1119387443,-1654645792],slot:"mainhand"}],show_in_tooltip:false}] 1
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/yharim/secondary/rage_meter

#Track Secondary Item
execute store result score @s secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0

#Activate Secondary#
execute if entity @s[tag=secKitActions] run function du-in:kit/yharim/secondary/init

execute if entity @s[scores={yharimRageDuration=0..}] run function du-in:kit/yharim/secondary/in_rage

#Armor#
#execute if entity @s[tag=armor] run function du-in:kit/yharim/armor

#Add Yharim Rage#
execute if entity @s[gamemode=!spectator,tag=!enraged,tag=!rageMeter,tag=!void] if entity @a[distance=0.05..3.5,tag=playing,gamemode=!spectator] unless score @a[distance=0.05..3.5,tag=playing,gamemode=!spectator,limit=1] team = @s team run function du-in:kit/yharim/secondary/charge
execute if entity @s[gamemode=!spectator,tag=!enraged,tag=!rageMeter,tag=void] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..3.5] run function du-in:kit/yharim/secondary/charge

#Attributes#
attribute @s generic.knockback_resistance base set 0.09

attribute @s minecraft:generic.movement_speed base set 0.125

execute unless entity @a[tag=partyLeader,tag=scaleMode] run function du-in:kit/all/size/huge

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