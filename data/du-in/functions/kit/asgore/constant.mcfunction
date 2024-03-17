execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/asgore/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/asgore/sounds/jump

# ASGORE #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/asgore/armor

#TRIDENT#
execute if entity @s[scores={trident=1..}] run function du-in:kit/asgore/passive/trident

#End trident cooldown
execute if entity @s[tag=thrown,scores={tridentTimer=0..}] run function du-in:kit/asgore/passive/timer

#Ability item
execute if entity @s[level=1] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Firewall","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Summons a wall of ","color":"dark_gray"}','{"text":"fire at the position ","color":"dark_gray"}','{"text":"you are looking.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:113,du-in:weaponItem}

#Ability function
execute if entity @s[tag=kitActions] run function du-in:kit/asgore/ability/init

#Weapon
execute unless entity @s[tag=thrown] unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!thrown,tag=!stolen,tag=!teamDead] hotbar.0 with minecraft:trident{display:{Name:'{"text":"Trident of Kings","color":"gray","bold":true}'},HideFlags:5,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-211992548,1576947317,-1129991297,-262630306],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.35,Operation:0,UUID:[I;-1214682839,817254077,-1521696113,-1915908566],Slot:"mainhand"}],du-in:weaponItem} 1

#ASGORE ATTRIBUTES#

#Size
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 1.2
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set 3.5
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 5
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set 4

#Weight and speed
attribute @s[tag=!stolen] minecraft:generic.armor_toughness base set 1
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.15

#MY KING
#TRULY A SHAME
#WHAT HAS HAPPENED TO YOU
#WORRY NOT MY LORD
#OUR DAY OF GLORY
#IS AT HAND