#SOUNDS#
execute if entity @s[scores={step=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump

#ARMOR#
execute if entity @s[tag=armor] run function du-in:kit/impostor/armor


tag @s[tag=!stolen] add sus

execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/impostor/weapon

#Ability Item#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick[custom_name='[{"text":"«EPIC» ","bold":true,"color":"gold"},{"text":"Emergency Meeting","color":"red","bold":true,"italic":false}]',lore=['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"sus","color":"dark_gray"}','{"text":"","color":"dark_gray"}'],enchantment_glint_override=true,custom_model_data=2003]

#Use ability
execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/impostor/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/impostor/ability/void/init

#IMPOSTER#
#execute if entity @s[tag=killLine] run function du-in:kit/impostor/sounds/line
attribute @s minecraft:generic.movement_speed base set 0.13
#.105
attribute @s generic.knockback_resistance base set 0.03
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 0.9
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 4.25
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set -2
#attribute @s minecraft:generic.attack_damage base set 3.0
#attribute @s minecraft:generic.attack_speed base set 40

execute unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove badBlock

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #minecraft:liquid rotated as @s run tag @s add badBlock

#THIS SPECIMEN
#STOKES MY CURIOUSITY
#PERHAPS I CAN STUDY IT
#FURTHER