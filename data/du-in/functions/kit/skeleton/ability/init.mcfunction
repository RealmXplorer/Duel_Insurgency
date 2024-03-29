clear @s #minecraft:arrows

#Give ability tag, unless sabotaged
scoreboard players add @s[tag=!sabotaged] skeletonMode 1
scoreboard players set @s[scores={skeletonMode=3..},tag=!sabotaged] skeletonMode 1

# item replace entity @s[scores={skeletonMode=1}] hotbar.8 with tipped_arrow[custom_name='{"text":"Slowness Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:slowness"}] 4
# item replace entity @s[scores={skeletonMode=2}] hotbar.8 with tipped_arrow[custom_name='{"text":"Poison Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:poison"}] 4
give @s[scores={skeletonMode=1}] tipped_arrow[custom_name='{"text":"Slowness Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:slowness"}] 3
give @s[scores={skeletonMode=2}] tipped_arrow[custom_name='{"text":"Poison Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:poison"}] 3

# execute if entity @s[tag=stolen] unless entity @a[scores={kit=30,skeletonMode=2},tag=!stolen,sort=nearest,limit=1] run item replace entity @s hotbar.8 with tipped_arrow[custom_name='{"text":"Slowness Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:slowness"}] 1
# execute if entity @s[tag=stolen] if entity @a[scores={kit=30,skeletonMode=2},tag=!stolen,sort=nearest,limit=1] run item replace entity @s hotbar.8 with tipped_arrow[custom_name='{"text":"Poison Arrows","color":"gold","bold":true,"italic":false}',lore=['{"text":"Throw or use to go back to sword mode","color":"dark_purple","bold":true}'],potion_contents={potion:"minecraft:poison"}] 1


execute if entity @s[tag=sabotaged] run function du-in:kit/skeleton/ability/sabotaged

#Clear inventory
clear @s #du-in:weapon
clear @s carrot_on_a_stick

#Change armor
#tag @s add armor
function du-in:kit/all/armor/armor

#Play particles and sounds

execute if entity @s[scores={skeletonMode=1}] run particle minecraft:snowflake ~ ~ ~ 0.5 1 0.5 0 50 force
execute if entity @s[scores={skeletonMode=2}] run particle minecraft:spore_blossom_air ~ ~ ~ 0.5 1 0.5 10 50

execute if entity @s[scores={skeletonMode=1}] run playsound minecraft:entity.stray.death master @a ~ ~ ~ 1000 .5 1
execute if entity @s[scores={skeletonMode=2}] run playsound minecraft:entity.bogged.death master @a ~ ~ ~ 1000 .5 1

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 100000 1

# playsound minecraft:entity.magma_cube.death master @a ~ ~ ~ 100000 1
# playsound minecraft:entity.magma_cube.jump master @a ~ ~ ~ 100000 1

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 100000 2
playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.05


#If not sabotaged, continue ability
xp set @s[tag=!sabotaged] 150 levels

#End function
tag @s remove sabotaged
tag @s remove kitActions
