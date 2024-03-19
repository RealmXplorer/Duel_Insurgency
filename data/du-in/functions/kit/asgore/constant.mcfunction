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
execute if entity @s[level=1] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Firewall","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Summons a wall of ","color":"dark_gray"}','{"text":"fire at the position ","color":"dark_gray"}','{"text":"you are looking.","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=113]

#Ability function
execute if entity @s[tag=kitActions] run function du-in:kit/asgore/ability/init

#Weapon
execute unless entity @s[tag=thrown] unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!thrown,tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:trident[custom_name='{"text":"Trident of Kings","color":"gray","bold":true}',unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:5,operation:"add_value",uuid:[I;587005605,-71940022,-1831877638,1219070476],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.35,operation:"add_value",uuid:[I;-1101001144,122440415,-1088561833,-1009306776],slot:"mainhand"}],show_in_tooltip:false}] 1

#ASGORE ATTRIBUTES#

#Size
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 1.2
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set 3.5
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 5
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set 4

#Weight and speed
attribute @s[tag=!stolen] minecraft:generic.armor_toughness base set 1
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.15

#MY KING
#TRULY A SHAME
#WHAT HAS HAPPENED TO YOU
#WORRY NOT MY LORD
#OUR DAY OF GLORY
#IS AT HAND