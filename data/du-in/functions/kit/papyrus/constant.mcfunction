execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/papyrus/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/papyrus/sounds/jump

#CONSTANTS#
execute if entity @e[type=armor_stand,scores={papyrusHitTimer=-1..}] run function du-in:kit/papyrus/stand

# PAPYRUS #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/papyrus/armor

execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:bone[custom_name='{"text":"Really Cool Normal Attack","color":"gray","bold":true,"italic":true}',enchantments={levels:{"minecraft:knockback":1}},custom_model_data=100,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:3,operation:"add_value",uuid:[I;2064214019,646136323,-1880707802,1050924522],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:40,operation:"add_value",uuid:[I;-622910054,-790870669,-1771129311,460430924],slot:"mainhand"}],show_in_tooltip:false}] 1

#Ability Item
execute if entity @s[level=1] run function du-in:kit/papyrus/ability/item

#Ability function
execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/papyrus/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/papyrus/ability/void/init

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.1275
#.1025
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.05