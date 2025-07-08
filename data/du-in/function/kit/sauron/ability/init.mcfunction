#Run Ability
execute if entity @s[tag=sabotaged] run function du-in:kit/sauron/ability/sabotaged
execute if entity @s[tag=!sabotaged] run function du-in:kit/sauron/ability/normal

#Play Sounds and Particles
playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.vex.ambient master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 .75
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 1.25
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 1


#End Ability
#clear @s minecraft:carrot_on_a_stick
tag @s add cooldown
tag @s remove kitActions
