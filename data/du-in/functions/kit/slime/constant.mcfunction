execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/slime/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/slime/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/slime/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/slime/sounds/jump

# SLIME #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/slime/armor

#Ability
#item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Magma Pulse","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Summon your inner ","color":"dark_gray"}','{"text":"magma cube to ","color":"dark_gray"}','{"text":"unleash the flames","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:102,weaponItem:1b}
execute if entity @s[level=1] run function du-in:kit/slime/ability/item
execute if entity @s[tag=kitActions] run function du-in:kit/slime/ability/init

#Weapon
execute if entity @s[tag=!teamDead,tag=!stolen,tag=!pussFear] unless entity @s[scores={weapCount=1}] run function du-in:kit/slime/weapon

#Magma timer
#scoreboard players remove @s[scores={magmaTimer=-99..}] magmaTimer 1

#End Ability
#execute if entity @s[scores={magmaTimer=..1}] run function du-in:kit/slime/ability/end

#effect give @s[scores={magmaTimer=0..}] minecraft:fire_resistance 1 0 true

execute if entity @s[scores={magmaTimer=-99..}] run function du-in:kit/slime/ability/timer
#ATT#
attribute @s[tag=!stolen] minecraft:generic.jump_strength base set 0.51

#attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.14
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.015


attribute @s[scores={Health=16..},tag=!stolen,tag=!skrunkMode] minecraft:generic.scale base set 1.2
attribute @s[scores={Health=16..},tag=!stolen,tag=!skrunkMode] minecraft:player.block_interaction_range base set 5
attribute @s[scores={Health=16..},tag=!stolen,tag=!skrunkMode] generic.armor base set 4
attribute @s[scores={Health=16..},tag=!stolen,tag=!skrunkMode] minecraft:generic.movement_speed base set 0.125

attribute @s[scores={Health=12..15},tag=!stolen,tag=!skrunkMode] minecraft:generic.scale base set 1
attribute @s[scores={Health=12..15},tag=!stolen,tag=!skrunkMode] minecraft:player.block_interaction_range base set 4.5
attribute @s[scores={Health=12..15},tag=!stolen,tag=!skrunkMode] minecraft:generic.movement_speed base set 0.13

#attribute @s[scores={Health=..15},tag=!stolen] generic.armor base set 4

attribute @s[scores={Health=8..11},tag=!stolen,tag=!skrunkMode] minecraft:generic.scale base set .9
attribute @s[scores={Health=8..11},tag=!stolen,tag=!skrunkMode] minecraft:player.block_interaction_range base set 4.25
attribute @s[scores={Health=8..11},tag=!stolen,tag=!skrunkMode] generic.armor base set -2
attribute @s[scores={Health=8..11},tag=!stolen,tag=!skrunkMode] minecraft:generic.movement_speed base set 0.135

attribute @s[scores={Health=4..7},tag=!stolen,tag=!skrunkMode] minecraft:generic.scale base set 0.8
attribute @s[scores={Health=4..7},tag=!stolen,tag=!skrunkMode] minecraft:player.block_interaction_range base set 4.15
attribute @s[scores={Health=4..7},tag=!stolen,tag=!skrunkMode] generic.armor base set -3
attribute @s[scores={Health=4..7},tag=!stolen,tag=!skrunkMode] minecraft:generic.movement_speed base set 0.1375

attribute @s[scores={Health=..3},tag=!stolen,tag=!skrunkMode] minecraft:generic.scale base set 0.7
attribute @s[scores={Health=..3},tag=!stolen,tag=!skrunkMode] minecraft:player.block_interaction_range base set 4.15
attribute @s[scores={Health=..3},tag=!stolen,tag=!skrunkMode] generic.armor base set -4
attribute @s[scores={Health=..3},tag=!stolen,tag=!skrunkMode] minecraft:generic.movement_speed base set 0.14
