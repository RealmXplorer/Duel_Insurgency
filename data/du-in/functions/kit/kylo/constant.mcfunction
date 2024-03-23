execute if entity @s[scores={hit=5..}] run function du-in:kit/kylo/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#ARMOR#
# execute if entity @s[tag=armor] run function du-in:kit/kylo/armor

#WEAPON#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead] hotbar.0 with wooden_sword[custom_name='{"text":"Crossguard Lightsaber","color":"#BA0000","bold":true}',custom_model_data=100,enchantment_glint_override=true,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4.25,operation:"add_value",uuid:[I;-1047320263,997148982,-1254147660,1720545381],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2,operation:"add_value",uuid:[I;1592899856,2046774116,-2066502317,-1491293494],slot:"mainhand"}],show_in_tooltip:false}] 1

#Attributes#
attribute @s generic.knockback_resistance base set 0.02
attribute @s generic.movement_speed base set 0.145
