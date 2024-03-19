execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/kylo/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#ARMOR#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/kylo/armor

#Ability Item#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Force Freeze","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I\'ll show you","color":"dark_gray"}','{"text":"the Dark Side.","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=116]

#Ability function#
execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/kylo/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/kylo/ability/void/init

#WEAPON#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with wooden_sword[custom_name='{"text":"Crossguard Lightsaber","color":"#BA0000","bold":true}',custom_model_data=100,enchantment_glint_override=true,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4.25,operation:"add_value",uuid:[I;-1047320263,997148982,-1254147660,1720545381],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;1592899856,2046774116,-2066502317,-1491293494],slot:"mainhand"}],show_in_tooltip:false}] 1
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0

#Attributes#
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.02
attribute @s[tag=!stolen] generic.movement_speed base set 0.145
