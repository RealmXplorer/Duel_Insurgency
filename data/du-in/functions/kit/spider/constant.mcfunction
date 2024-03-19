execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/spider/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/spider/sounds/jump

#EFFECTS#

# SPIDER #
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:stone_sword[custom_name='{"text":"Webbed Sword","color":"gray","bold":true}',custom_model_data=105unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4.75,operation:"add_value",uuid:[I;-1565978830,575685968,-2096242647,-1036010337],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.5,operation:"add_value",uuid:[I;2035841867,-1330032826,-2035473273,2079461311],slot:"mainhand"}],show_in_tooltip:false}] 1


execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/spider/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/spider/ability/void/init

execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/spider/armor

item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='{"text":"Web Blast","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Shoots a blast of webs ","color":"dark_gray"}','{"text":"that slows nearby ","color":"dark_gray"}','{"text":"opponents.","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=100]


attribute @s[tag=!stolen] generic.movement_speed base set 0.135
#.1225
attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0.03