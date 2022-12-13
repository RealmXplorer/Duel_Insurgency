#Sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/cuphead/sounds/hit
#execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/flowey/sounds/step
#execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/flowey/sounds/step
#execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/flowey/sounds/jump

# Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/cuphead/armor

#Give ability#
execute if entity @s[level=1] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Super Art II","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Can only be used with 5 cards, and increases I-frames","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:136,weaponItem:1b}

#Abilities initializations
execute if entity @s[tag=kitActions] run function du-in:kit/cuphead/ability/init
execute if entity @s[tag=secKitActions,tag=!stolen] run function du-in:kit/cuphead/parry/init

#WEAPON#
#execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/cuphead/weapon

execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={secCount=1}] run item replace entity @s hotbar.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Devil\'s Horn","color":"#EF0AFF","bold":true}',Lore:['{"text":"Jump in the air and right click near enemy"}','{"text":"or projectile to parry!"}']},Unbreakable:1b,CustomModelData:2014,weaponItem:1b,HideFlags:4,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2.5,Operation:0,UUID:[I;1200076442,258100954,-1565177410,1292513131],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:40,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

#Give Secondary#
#execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={secCount=1}] unless entity @s[scores={parryTimer=1..}] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{display:{Name:'{"text":"Parry","color":"#EF0AFF","bold":true}',Lore:['{"text":"Jump in the air and right click near enemy or projectile to parry!"}']},Unbreakable:1b,CustomModelData:2014,weaponItem:1b} 1

#Check for secondary#
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0
#execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0

#Super ability#
execute if entity @s[scores={cupTimer=0..}] run function du-in:kit/cuphead/ability/super

#Timers#
scoreboard players remove @s[scores={floatTimer=0..}] floatTimer 1
effect clear @s[scores={floatTimer=1}] minecraft:levitation

execute if entity @s[scores={parryTimer=0..}] run function du-in:kit/cuphead/parry/timer

#Play Super sound#
execute if entity @s[scores={cardPower=25..},tag=!super] run function du-in:kit/cuphead/ability/charged

#Give Cards#
execute if entity @s[scores={cardPower=5..9}] run function du-in:kit/cuphead/card/card1

execute if entity @s[scores={cardPower=10..14}] run function du-in:kit/cuphead/card/card2

execute if entity @s[scores={cardPower=15..19}] run function du-in:kit/cuphead/card/card3

execute if entity @s[scores={cardPower=20..24}] run function du-in:kit/cuphead/card/card4

item replace entity @s[scores={cardPower=25..}] hotbar.8 with paper{weaponItem:1b,CustomModelData:100} 5

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.13

execute unless entity @a[tag=partyLeader,tag=weightOff] unless entity @s[scores={cupTimer=0..}] run attribute @s[tag=!stolen] generic.knockback_resistance base set 0.02