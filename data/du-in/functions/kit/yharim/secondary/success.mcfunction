#Play sounds
playsound minecraft:yharim.rage.use master @a ~ ~ ~ 1 1 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1.05

#Play Particles
particle minecraft:flame ~ ~1 ~ 1 1 1 0 20 force
particle minecraft:angry_villager ~ ~2 ~ 0.25 0 0.01 0 20 force

#Give Effects
scoreboard players set @s yharimRageDuration 60
tag @s add enraged

attribute @s generic.attack_damage modifier add 9ea2728b-7a81-441a-a8d1-9775741f6a41 yharimRageDamage 6.0 add_value
attribute @s generic.movement_speed modifier add e6633dad-b6ec-4d0b-9708-59197e5e5112 yharimRageSpeed 0.025 add_value
attribute @s generic.attack_speed modifier add 614e6bbe-4551-448f-a380-b0d5652c8b02 yharimRageHaste 0.4 add_value

#effect give @s minecraft:strength 2 1 true
#effect give @s minecraft:speed 2 0 true
#effect give @s minecraft:haste 2 0 true

#Clear and reset secondary
clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2007]
scoreboard players set @s yharimRage 0
tag @s remove rageMeter

#End Secondary
tag @s remove secKitActions
