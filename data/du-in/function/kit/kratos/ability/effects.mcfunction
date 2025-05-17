#effect give @s minecraft:speed 3 0 true
#effect give @s minecraft:resistance 3 0 true
attribute @s movement_speed modifier add kratos_ability 0.075 add_value
attribute @s attack_damage modifier add kratos_ability 4.0 add_value
attribute @s attack_knockback modifier add kratos_ability 1.0 add_value

attribute @s knockback_resistance modifier add kratos_ability -0.18 add_value
attribute @s minecraft:armor modifier add kratos_ability -2.0 add_value
attribute @s minecraft:armor_toughness modifier add kratos_ability -1.0 add_value

tag @s add kratosRage
clear @s #du-in:weapon
