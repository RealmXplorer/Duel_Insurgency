execute if entity @s[tag=sabotaged] run function du-in:kit/asgore/ability/contact

#Give ability tag, unless sabotaged
tag @s[tag=!sabotaged] add magma
tag @s[tag=!sabotaged] add cooldown
#Clear inventory
clear @s

#Replace weapon and armor with magma variants
execute if entity @s[tag=!sabotaged] run function du-in:kit/all/weapon/init
execute if entity @s[tag=!sabotaged] run function du-in:kit/all/armor/armor
#tag @s[tag=!sabotaged] add armor

#Start ability timer and give fire resist
execute if entity @s[tag=!empower,tag=!sabotaged] run function du-in:kit/slime/ability/default_effects
execute if entity @s[tag=empower,tag=!sabotaged] run function du-in:kit/slime/ability/empowered_effects

#Play particles and sounds
particle minecraft:flame ~ ~ ~ 0.5 1 0.5 0 50 force
particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0 50 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.death master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.jump master @a ~ ~ ~ 100000 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 100000 2
playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.05

#If sabotaged, end ability
xp set @s[tag=!stolen,tag=sabotaged] 320 levels
tag @s[tag=stolen,tag=sabotaged] add kitDone
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#End function
tag @s remove empower
tag @s remove sabotaged
tag @s remove kitActions
