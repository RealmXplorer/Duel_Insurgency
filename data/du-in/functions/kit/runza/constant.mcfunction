#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/runza/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:stone_sword[custom_name='{"text":"The Dodecaburger","color":"gray","bold":true}',custom_model_data=121,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4.75,operation:"add_value",uuid:[I;-1883124048,-1151316396,-1491141208,32963101],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;-318252724,-873774100,-1178663040,-1953097197],slot:"mainhand"}],show_in_tooltip:false}] 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

#Ability Item#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='[{"text":"«EPIC» ","color":"gold","bold":true,"italic":true},{"text":"Temperature Tuesday","color":"red","bold":true,"italic":false}]',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"FREE DEALS!","color":"dark_gray"}','{"text":"","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=2005]

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/runza/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/runza/ability/void/init

#RUNZA#
execute if entity @s[tag=armor,tag=!bigChungus] run function du-in:kit/runza/armor
#RUNZA#
#execute if entity @s[tag=killLine] run function du-in:kit/runza/sounds/line

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.1075
attribute @s generic.knockback_resistance base set 0.04