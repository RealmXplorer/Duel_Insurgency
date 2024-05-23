attribute @s generic.movement_speed modifier remove yharim_ability
attribute @s generic.knockback_resistance modifier remove yharim_ability
attribute @s minecraft:generic.armor modifier remove yharim_ability
attribute @s minecraft:generic.armor_toughness modifier remove yharim_ability
#Damage (sabotage)
attribute @s minecraft:generic.attack_damage modifier remove yharim_attack_sabotage

tag @s remove cooldown
tag @s remove sabotaged
scoreboard players reset @s yharimTimer
xp set @s[tag=!stolen] 340 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
