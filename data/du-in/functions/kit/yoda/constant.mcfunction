#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/yoda/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/yoda/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/yoda/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/yoda/armor

# Ability ITEM #
execute if entity @s[level=1] run function du-in:kit/yoda/ability/item

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with stone_sword[custom_name='{"text":"Saber of the Grandmaster","color":"#21ad28","bold":true}',enchantment_glint_override=true,custom_model_data=113,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:3.75,operation:"add_value",uuid:[I;-168437874,152782582,-2000443009,1993441999],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.15,operation:"add_value",uuid:[I;279341438,1343704567,-1994473705,-471868331],slot:"mainhand"}],show_in_tooltip:false}] 1

#Use ability
execute if entity @s[tag=kitActions] run function du-in:kit/yoda/ability/init

execute if entity @s[scores={yodaTimer=0..}] run function du-in:kit/yoda/ability/timer

#Base movement speed#
attribute @s[tag=!stolen] generic.movement_speed base set 0.1525

#Base Size
execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/tiny

#Base Weight
attribute @s[tag=!stolen] generic.knockback_resistance base set 0