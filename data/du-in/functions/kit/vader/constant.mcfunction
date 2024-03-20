execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/vader/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#EFFECT#
#effect give @s[tag=!stolen] minecraft:slowness 1 0 true

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with stone_sword[custom_name='{"text":"Saber of the Dark Lord","color":"#991717","bold":true}',custom_model_data=100,enchantment_glint_override=true,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4,operation:"add_value",uuid:[I;1871251225,-386775478,-1334567859,-741331920],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;908986509,-2105260914,-1679043577,-530364223],slot:"mainhand"}],show_in_tooltip:false}] 1

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/vader/armor

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Force Grab","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I find your lack of","color":"dark_gray"}','{"text":"faith disturbing.","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=117]

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/vader/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/vader/ability/void/init

#Attribute#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
attribute @s[tag=!stolen] minecraft:generic.armor_toughness base set 1.5
attribute @s[tag=!stolen] minecraft:generic.knockback_resistance base set 0.175

execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 1.15
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 4.9
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set 3
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] generic.attack_damage base set 1.5

#Breathing and berserk
execute if entity @s[tag=!stolen] run function du-in:kit/vader/berserk