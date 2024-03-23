execute if entity @s[scores={hit=5..}] run function du-in:kit/spider/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/spider/sounds/jump

# SPIDER #
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead] hotbar.0 with minecraft:stone_sword[custom_name='{"text":"Webbed Sword","color":"gray","bold":true}',custom_model_data=105,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4.75,operation:"add_value",uuid:[I;-1565978830,575685968,-2096242647,-1036010337],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.5,operation:"add_value",uuid:[I;2035841867,-1330032826,-2035473273,2079461311],slot:"mainhand"}],show_in_tooltip:false}] 1

#Armor - Moved to kit/all/armor/armor
#execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/spider/armor

attribute @s generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.03