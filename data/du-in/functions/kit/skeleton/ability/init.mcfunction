clear @s #minecraft:arrows
#Give ability tag, unless sabotaged
scoreboard players add @s skeletonMode 1
scoreboard players set @s[scores={skeletonMode=3..}] skeletonMode 1

item replace entity @s[scores={skeletonMode=1}] hotbar.8 with tipped_arrow[potion_contents={potion:"minecraft:slowness"}] 3
item replace entity @s[scores={skeletonMode=2}] hotbar.8 with tipped_arrow[potion_contents={potion:"minecraft:poison"}] 3

#Clear inventory
clear @s #du-in:weapon
clear @s carrot_on_a_stick

xp set @s[tag=!stolen] 200 levels

#Replace weapon and armor with magma variants
#scoreboard players set @s[tag=!sabotaged] weapCount 0
tag @s[tag=!sabotaged] add armor

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
xp set @s 200 levels
#tag @s[tag=stolen,tag=sabotaged] add kitDone

#End function
tag @s remove sabotaged
tag @s remove kitActions
