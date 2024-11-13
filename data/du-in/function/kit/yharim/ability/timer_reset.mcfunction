attribute @s movement_speed modifier remove yharim_ability
attribute @s knockback_resistance modifier remove yharim_ability
attribute @s minecraft:armor modifier remove yharim_ability
attribute @s minecraft:armor_toughness modifier remove yharim_ability
#Damage (sabotage)
attribute @s minecraft:attack_damage modifier remove yharim_attack_sabotage

tag @s remove cooldown
tag @s remove sabotaged
scoreboard players reset @s yharimTimer
xp set @s[tag=!stolen] 340 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
