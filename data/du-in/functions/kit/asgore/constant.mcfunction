execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/asgore/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/asgore/sounds/jump

# ASGORE #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/asgore/armor

#TRIDENT#
execute if entity @s[scores={trident=1..}] run function du-in:kit/asgore/passive/trident

#End trident cooldown
execute if entity @s[tag=thrown,scores={tridentTimer=0..}] run function du-in:kit/asgore/passive/timer

#Ability item
execute if entity @s[level=1] run function du-in:kit/asgore/ability/item

#Ability function
execute if entity @s[tag=kitActions] run function du-in:kit/asgore/ability/init

#Weapon
#execute unless entity @s[tag=thrown] unless entity @s[scores={weapCount=1}] if entity @s[tag=!thrown,tag=!stolen,tag=!teamDead] run item replace entity @s hotbar.0 with minecraft:trident[custom_name='{"text":"Trident of Kings","color":"gray","bold":true}',unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:5,operation:"add_value",uuid:[I;587005605,-71940022,-1831877638,1219070476],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.35,operation:"add_value",uuid:[I;-1101001144,122440415,-1088561833,-1009306776],slot:"mainhand"}],show_in_tooltip:false}] 1
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!thrown,tag=!stolen,tag=!teamDead] run item replace entity @s hotbar.0 with minecraft:trident[custom_name='{"text":"Trident of Kings","color":"gray","bold":true}',unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:5,operation:"add_value",uuid:[I;587005605,-71940022,-1831877638,1219070476],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.35,operation:"add_value",uuid:[I;-1101001144,122440415,-1088561833,-1009306776],slot:"mainhand"}],show_in_tooltip:false}] 1

#ASGORE ATTRIBUTES#

#Size
execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/huge

#Weight and speed
#attribute @s[tag=!stolen] minecraft:generic.armor_toughness base set 1
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.15

#MY KING
#TRULY A SHAME
#WHAT HAS HAPPENED TO YOU
#WORRY NOT MY LORD
#OUR DAY OF GLORY
#IS AT HAND