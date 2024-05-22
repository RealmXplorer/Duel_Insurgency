scoreboard players set @s floweyHitTimer 70

#Particles and sounds#
playsound minecraft:flowey.ability master @a ~ ~ ~ 10 1
playsound minecraft:sans.ability master @a ~ ~ ~ 10 1
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 10 1

tag @s add cooldown
tag @s remove kitActions
