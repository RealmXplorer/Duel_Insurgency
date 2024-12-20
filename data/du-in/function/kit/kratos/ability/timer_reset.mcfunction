attribute @s movement_speed modifier remove yharim_ability
attribute @s knockback_resistance modifier remove yharim_ability
attribute @s minecraft:armor modifier remove yharim_ability
attribute @s minecraft:armor_toughness modifier remove yharim_ability
#Damage (sabotage)
attribute @s minecraft:attack_damage modifier remove yharim_attack_sabotage

execute if entity @s[scores={yharimTimer=..0}] run function du-in:kit/yharim/ability/end
