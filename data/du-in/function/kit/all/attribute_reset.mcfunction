#Remove base stats
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.armor_toughness base set 0
attribute @s minecraft:generic.knockback_resistance base set 0
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149
attribute @s minecraft:generic.scale base set 1
attribute @s minecraft:player.block_interaction_range base set 4.5
attribute @s minecraft:generic.jump_strength base set 0.42
attribute @s minecraft:generic.gravity base set 0.08
#attribute @s minecraft:player.block_break_speed base set 1

#Remove Modifiers
##Springtrap
attribute @s generic.attack_damage modifier remove springlock_damage

##Yharim
attribute @s generic.movement_speed modifier remove yharim_ability
attribute @s generic.knockback_resistance modifier remove yharim_ability
attribute @s minecraft:generic.armor modifier remove yharim_ability
attribute @s minecraft:generic.armor_toughness modifier remove yharim_ability
#Damage (sabotage)
attribute @s minecraft:generic.attack_damage modifier remove yharim_ability

#Rage
attribute @s generic.attack_damage modifier remove 9ea2728b-7a81-441a-a8d1-9775741f6a41
attribute @s generic.movement_speed modifier remove e6633dad-b6ec-4d0b-9708-59197e5e5112
attribute @s generic.attack_speed modifier remove 614e6bbe-4551-448f-a380-b0d5652c8b02

##Clairen
attribute @s generic.attack_damage modifier remove clairen_damage

##Puss
attribute @s generic.knockback_resistance modifier remove puss_kb

##Death
attribute @s minecraft:generic.armor modifier remove death_whistle_buff

##Cuphead
attribute @s generic.knockback_resistance modifier remove cuphead_ult

##Flowey
attribute @s minecraft:generic.jump_strength modifier remove flowey_jump

##Team Dead Effects
attribute @s minecraft:generic.jump_strength modifier remove team_dead
attribute @s minecraft:generic.attack_damage modifier remove team_dead

##Parry
attribute @s generic.knockback_resistance modifier remove parry
attribute @s generic.armor modifier remove parry
attribute @s generic.armor_toughness modifier remove parry

##COME BACK TO THIS