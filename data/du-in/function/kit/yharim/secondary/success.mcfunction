#Play sounds
playsound minecraft:yharim.rage.use master @a ~ ~ ~ 1 1 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1.05

#Play Particles
particle minecraft:flame ~ ~1 ~ 1 1 1 0 20 force
particle minecraft:angry_villager ~ ~2 ~ 0.25 0 0.01 0 20 force

#Give Effects
scoreboard players set @s yharimRageDuration 60
tag @s add enraged

attribute @s generic.attack_damage modifier add yharim_rage 6.0 add_value
attribute @s generic.movement_speed modifier add yharim_rage 0.025 add_value
attribute @s generic.attack_speed modifier add yharim_rage 0.4 add_value

#effect give @s minecraft:strength 2 1 true
#effect give @s minecraft:speed 2 0 true
#effect give @s minecraft:haste 2 0 true

#Clear and reset secondary
clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2007]
scoreboard players set @s yharimRage 0
tag @s remove rageMeter

#End Secondary
tag @s remove secKitActions
