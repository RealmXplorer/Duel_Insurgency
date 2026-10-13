scoreboard players set @s floweyHitTimer 70
attribute @s minecraft:jump_strength modifier add flowey_jump -100 add_value

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

#Particles and sounds#
playsound du-in:kit.flowey.ability master @a ~ ~ ~ 10 1
playsound du-in:sfx.ut.ability master @a ~ ~ ~ 10 1
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 10 1

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

tag @s add floweyDuration
tag @s add cooldown
tag @s remove kitActions

execute unless score #floweyBurrow running matches 1 run function du-in:kit/flowey/ability/loop
