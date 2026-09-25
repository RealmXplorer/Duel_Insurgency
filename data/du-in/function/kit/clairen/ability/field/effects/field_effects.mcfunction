#Test for affected Field
execute if entity @s[tag=sabotagedField] run return run function du-in:kit/clairen/ability/field/effects/sabotaged_field
execute if entity @s[tag=empoweredField] run return run function du-in:kit/clairen/ability/field/effects/empowered_field
execute if entity @s[tag=empoweredSabotageField] run return run function du-in:kit/clairen/ability/field/effects/empowered_sabotage_field

#Default effects
#effect give @s minecraft:strength 1 0 true
attribute @s attack_damage modifier add clairen_damage 3.0 add_value
effect give @s minecraft:glowing 1 0 true