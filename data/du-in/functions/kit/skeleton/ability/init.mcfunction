clear @s #minecraft:arrows

#Give ability tag, unless sabotaged
scoreboard players add @s[tag=!sabotaged] skeletonMode 1
scoreboard players set @s[scores={skeletonMode=3..},tag=!sabotaged] skeletonMode 1

item replace entity @s[scores={skeletonMode=1}] hotbar.8 with tipped_arrow[potion_contents={potion:"minecraft:slowness"}] 3
item replace entity @s[scores={skeletonMode=2}] hotbar.8 with tipped_arrow[potion_contents={potion:"minecraft:poison"}] 3

execute if entity @s[tag=sabotaged] run function du-in:kit/skeleton/ability/sabotaged

#Clear inventory
clear @s #du-in:weapon
clear @s carrot_on_a_stick

#Change armor
#tag @s add armor
function du-in:kit/all/armor

#Play particles and sounds
particle minecraft:flame ~ ~ ~ 0.5 1 0.5 0 50 force
particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0 50 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.death master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.jump master @a ~ ~ ~ 100000 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 100000 2
playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.05


#If not sabotaged, continue ability
xp set @s[tag=!sabotaged] 200 levels

#End function
tag @s remove sabotaged
tag @s remove kitActions
