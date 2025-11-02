#Reset base stats
attribute @s minecraft:armor base set 0
attribute @s minecraft:armor_toughness base set 0
attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:max_health base set 20
attribute @s minecraft:attack_damage base set 0
attribute @s minecraft:attack_speed base set 4
attribute @s minecraft:attack_knockback base set 0
attribute @s minecraft:movement_speed base set 0.10000000149
attribute @s minecraft:scale base set 1
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:entity_interaction_range base set 3.0
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:gravity base set 0.08
attribute @s minecraft:movement_efficiency base set 0
attribute @s minecraft:water_movement_efficiency base set 0
tag @s remove lessHealth

#Remove Modifiers
##Springtrap
attribute @s attack_damage modifier remove springlock_damage

##Yharim
attribute @s movement_speed modifier remove yharim_ability
attribute @s knockback_resistance modifier remove yharim_ability
attribute @s minecraft:armor modifier remove yharim_ability
attribute @s minecraft:armor_toughness modifier remove yharim_ability
#Damage (sabotage)
attribute @s minecraft:attack_damage modifier remove yharim_ability

#Rage
attribute @s attack_damage modifier remove yharim_rage
attribute @s movement_speed modifier remove yharim_rage
attribute @s attack_speed modifier remove yharim_rage

attribute @s attack_damage modifier remove kratos_rage
attribute @s movement_speed modifier remove kratos_rage
attribute @s attack_speed modifier remove kratos_rage

##Kratos
attribute @s movement_speed modifier remove kratos_ability
attribute @s attack_damage modifier remove kratos_ability
attribute @s attack_knockback modifier remove kratos_ability
attribute @s knockback_resistance modifier remove kratos_ability
attribute @s minecraft:armor modifier remove kratos_ability
attribute @s minecraft:armor_toughness modifier remove kratos_ability
#Damage (sabotage)
attribute @s minecraft:attack_damage modifier remove kratos_attack_sabotage

##Bogo
attribute @s movement_speed modifier remove bogo_charge
attribute @s movement_speed modifier remove bogo_charge_build

##SAURON
attribute @s minecraft:movement_speed modifier remove minecraft:speed_corrupt
attribute @s armor modifier remove armor_corrupt

##CINDER
attribute @s armor modifier remove cinder_charge

##SANS
attribute @s knockback_resistance modifier remove sans_hit

##Clairen
attribute @s attack_damage modifier remove clairen_damage

##Puss
attribute @s knockback_resistance modifier remove puss_kb

##Death
attribute @s minecraft:armor modifier remove death_whistle_buff

##Cuphead
attribute @s knockback_resistance modifier remove cuphead_ult

##Flowey
attribute @s minecraft:jump_strength modifier remove flowey_jump

##Gaster
attribute @s knockback_resistance modifier remove gaster_shatter
attribute @s movement_speed modifier remove gaster_shatter

##Team Dead Effects
attribute @s minecraft:jump_strength modifier remove team_dead
attribute @s minecraft:attack_damage modifier remove team_dead

##Parry
attribute @s knockback_resistance modifier remove parry
attribute @s armor modifier remove parry
attribute @s armor_toughness modifier remove parry

attribute @s minecraft:armor modifier remove parry_resist
attribute @s minecraft:armor_toughness modifier remove parry_resist

##COME BACK TO THIS