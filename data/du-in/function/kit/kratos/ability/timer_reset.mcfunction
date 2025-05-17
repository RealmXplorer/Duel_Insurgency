attribute @s movement_speed modifier remove kratos_ability
attribute @s attack_damage modifier remove kratos_ability
attribute @s attack_knockback modifier remove kratos_ability
attribute @s knockback_resistance modifier remove kratos_ability
attribute @s minecraft:armor modifier remove kratos_ability
attribute @s minecraft:armor_toughness modifier remove kratos_ability
#Damage (sabotage)
attribute @s minecraft:attack_damage modifier remove kratos_attack_sabotage

execute if entity @s[scores={kratosTimer=..0}] run function du-in:kit/kratos/ability/end
