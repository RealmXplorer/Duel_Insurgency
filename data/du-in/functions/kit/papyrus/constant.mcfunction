execute if entity @s[scores={hit=5..}] run function du-in:kit/papyrus/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/papyrus/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/papyrus/sounds/jump

# Armor # - Now in kit/all/armor/armor
# execute if entity @s[tag=armor] run function du-in:kit/papyrus/armor

#Weapon
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead] hotbar.0 with minecraft:bone[custom_name='{"text":"Really Cool Normal Attack","color":"gray","bold":true,"italic":true}',enchantments={levels:{"minecraft:knockback":1}},custom_model_data=100,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:3,operation:"add_value",uuid:[I;2064214019,646136323,-1880707802,1050924522],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:40,operation:"add_value",uuid:[I;-622910054,-790870669,-1771129311,460430924],slot:"mainhand"}],show_in_tooltip:false}] 1

#ATTRIBUTES
attribute @s minecraft:generic.movement_speed base set 0.1275
attribute @s generic.knockback_resistance base set 0.05