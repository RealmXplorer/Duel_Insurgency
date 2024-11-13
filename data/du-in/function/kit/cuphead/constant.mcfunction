#Sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/cuphead/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

# Armor #
#execute if entity @s[tag=armor] run function du-in:kit/cuphead/armor

#Abilities initializations
execute if entity @s[tag=secKitActions] run function du-in:kit/cuphead/parry/init

#WEAPON#
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead] run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[custom_name='{"text":"Devil\'s Horn","color":"#EF0AFF","bold":true}',lore=['{"text":"Jump in the air and right click near enemy"}','{"text":"or projectile to parry!"}','{"text":" ","color":"gray","bold":true}','{"text":"I didn\'t know this was a hat!","color":"white","bold":false}','{"text":"It wasn\'t...","color":"red","bold":false}'],custom_model_data=2014,enchantment_glint_override=true,unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"attack_damage",id:"attack_damage",amount:2.75,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed",amount:40,operation:"add_value",slot:"mainhand"}],show_in_tooltip:true}] 1

execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

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