#Sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/cuphead/sounds/hit
#execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/flowey/sounds/step
#execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/flowey/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

# Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/cuphead/armor

#Give ability#
execute if entity @s[level=1] run function du-in:kit/cuphead/ability/item

#Abilities initializations
execute if entity @s[tag=kitActions] run function du-in:kit/cuphead/ability/init
execute if entity @s[tag=secKitActions,tag=!stolen,tag=!void] run function du-in:kit/cuphead/parry/init
execute if entity @s[tag=secKitActions,tag=!stolen,tag=void] run function du-in:kit/cuphead/parry/void/init

#WEAPON#
execute unless items entity @s[tag=!teamDead,tag=!stolen,tag=!pussFear] hotbar.* warped_fungus_on_a_stick[count=1] run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[custom_name='{"text":"Devil\'s Horn","color":"#EF0AFF","bold":true}',lore=['{"text":"Jump in the air and right click near enemy"}','{"text":"or projectile to parry!"}','{"text":" ","color":"gray","bold":true}','{"text":"I didn\'t know this was a hat!","color":"white","bold":false}','{"text":"It wasn\'t...","color":"red","bold":false}'],custom_model_data=2014,enchantment_glint_override=true,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:2.75,operation:"add_value",uuid:[I;-617610664,-1279309107,-1394978828,526365776],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:40,operation:"add_value",uuid:[I;-847327216,80102297,-1192907867,-269969953],slot:"mainhand"}],show_in_tooltip:false}] 1

#Super ability#
execute if entity @s[scores={cupTimer=0..}] run function du-in:kit/cuphead/ability/super

#Timers#
scoreboard players remove @s[scores={floatTimer=0..}] floatTimer 1
effect clear @s[scores={floatTimer=1}] minecraft:levitation

execute if entity @s[scores={parryTimer=0..}] run function du-in:kit/cuphead/parry/timer

#Give Cards#
execute if entity @s[scores={cardPower=5..9}] run function du-in:kit/cuphead/card/card1

execute if entity @s[scores={cardPower=10..14}] run function du-in:kit/cuphead/card/card2

execute if entity @s[scores={cardPower=15..19}] run function du-in:kit/cuphead/card/card3

execute if entity @s[scores={cardPower=20..24}] run function du-in:kit/cuphead/card/card4

execute if entity @s[scores={cardPower=25..}] run function du-in:kit/cuphead/card/card5

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.02
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set .9
