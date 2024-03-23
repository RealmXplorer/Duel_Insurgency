execute if entity @s[scores={hit=5..}] run function du-in:kit/vader/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead] hotbar.0 with stone_sword[custom_name='{"text":"Saber of the Dark Lord","color":"#991717","bold":true}',custom_model_data=100,enchantment_glint_override=true,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4,operation:"add_value",uuid:[I;1871251225,-386775478,-1334567859,-741331920],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;908986509,-2105260914,-1679043577,-530364223],slot:"mainhand"}],show_in_tooltip:false}] 1

#Armor#
#execute if entity @s[tag=armor] run function du-in:kit/vader/armor

#Attribute#
attribute @s minecraft:generic.movement_speed base set 0.125
attribute @s minecraft:generic.armor_toughness base set 1.5
attribute @s minecraft:generic.knockback_resistance base set 0.175

execute unless entity @a[tag=partyLeader,tag=scaleMode] run function du-in:kit/all/size/big

#Breathing and berserk
function du-in:kit/vader/berserk