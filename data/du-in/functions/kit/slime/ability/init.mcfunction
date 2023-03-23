#Give ability tag, unless sabotaged
tag @s[tag=!sabotaged] add magma

execute if entity @s[tag=sabotaged] run function du-in:kit/asgore/ability/contact

#Clear inventory
clear @s

#Replace weapon and armor with magma variants
scoreboard players set @s[tag=!sabotaged] weapCount 0
tag @s[tag=!sabotaged] add armor

#Start ability timer and give fire resist
scoreboard players set @s[tag=!sabotaged] magmaTimer 60
effect give @s[tag=!sabotaged] minecraft:fire_resistance 3 0 true

#Play particles and sounds
particle minecraft:flame ~ ~ ~ 0.5 1 0.5 0 50 force
particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0 50 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.death master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.jump master @a ~ ~ ~ 100000 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 100000 2

#If sabotaged, end ability
xp set @s[tag=!stolen,tag=sabotaged] 320 levels
tag @s[tag=stolen,tag=sabotaged] add kitDone

#End function
tag @s remove sabotaged
tag @s remove kitActions
