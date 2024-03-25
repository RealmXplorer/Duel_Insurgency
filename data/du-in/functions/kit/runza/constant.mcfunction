#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/runza/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead] hotbar.0 with minecraft:stone_sword[custom_name='{"text":"The Dodecaburger","color":"gray","bold":true}',custom_model_data=121,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4.75,operation:"add_value",uuid:[I;-1883124048,-1151316396,-1491141208,32963101],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;-318252724,-873774100,-1178663040,-1953097197],slot:"mainhand"}],show_in_tooltip:false}] 1

#Ability Item#
# execute if entity @s[level=1] run function du-in:kit/runza/ability/item

# execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/runza/ability/init
# execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/runza/ability/void/init

#RUNZA#
#execute if entity @s[tag=armor,tag=!bigChungus] run function du-in:kit/runza/armor

attribute @s minecraft:generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.04