#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/saul/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/saul/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/saul/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#
tag @a[tag=!saul,tag=!legMusicOff,tag=!void,tag=!ctfIngame,tag=!cqIngame] add saul

# ARMOR #
#execute if entity @s[tag=armor] run function du-in:kit/saul/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/saul/ability/item

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead] hotbar.0 with minecraft:bone[custom_name='{"text":"Book of Laws","color":"gray","bold":true,"italic":true}',custom_model_data=105,attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:3,operation:"add_value",uuid:[I;-920799432,1464551851,-2076901484,-178503328],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:40,operation:"add_value",uuid:[I;-833360657,-2050012590,-1601667883,67575120],slot:"mainhand"}],show_in_tooltip:false}] 1

#Use ability
#execute if entity @s[tag=kitActions] run function du-in:kit/saul/ability/init

#Base movement speed#
attribute @s minecraft:generic.movement_speed base set 0.1375

#Base Weight
attribute @s generic.knockback_resistance base set 0.35