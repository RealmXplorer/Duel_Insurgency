#Remove base stats
attribute @s minecraft:armor base set 0
attribute @s minecraft:armor_toughness base set 0
attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:max_health base set 20
attribute @s minecraft:attack_damage base set 0
attribute @s minecraft:attack_speed base set 4
attribute @s minecraft:movement_speed base set 0.10000000149
attribute @s minecraft:scale base set 1
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:gravity base set 0.08
#attribute @s minecraft:block_break_speed base set 1

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

##Team Dead Effects
attribute @s minecraft:jump_strength modifier remove team_dead
attribute @s minecraft:attack_damage modifier remove team_dead

##Parry
attribute @s knockback_resistance modifier remove parry
attribute @s armor modifier remove parry
attribute @s armor_toughness modifier remove parry

##COME BACK TO THIS