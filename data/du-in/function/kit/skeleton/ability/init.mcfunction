clear @s #minecraft:arrows

#Change skeleton mode, unless sabotaged
scoreboard players add @s[tag=!sabotaged] skeletonMode 1
scoreboard players set @s[scores={skeletonMode=3..},tag=!sabotaged] skeletonMode 1

#Give arrows (Give more if empowered)
execute if entity @s[tag=!empower] run give @s[scores={skeletonMode=1}] tipped_arrow[item_name={text:"Slowness Arrows",color:gold,bold:true},lore=[{text:"Throw or use to go back to sword mode",color:dark_purple,bold:true}],potion_contents={potion:"minecraft:slowness"}] 3
execute if entity @s[tag=!empower] run give @s[scores={skeletonMode=2}] tipped_arrow[item_name={text:"Poison Arrows",color:gold,bold:true},lore=[{text:"Throw or use to go back to sword mode",color:dark_purple,bold:true}],potion_contents={potion:"minecraft:poison"}] 3

execute if entity @s[tag=empower] run give @s[scores={skeletonMode=1}] tipped_arrow[item_name={text:"Slowness Arrows",color:gold,bold:true},lore=[{text:"Throw or use to go back to sword mode",color:dark_purple,bold:true}],potion_contents={potion:"minecraft:slowness"}] 5
execute if entity @s[tag=empower] run give @s[scores={skeletonMode=2}] tipped_arrow[item_name={text:"Poison Arrows",color:gold,bold:true},lore=[{text:"Throw or use to go back to sword mode",color:dark_purple,bold:true}],potion_contents={potion:"minecraft:poison"}] 5


execute if entity @s[tag=sabotaged] run function du-in:kit/skeleton/ability/sabotaged

#Clear inventory
clear @s #du-in:weapon
clear @s carrot_on_a_stick

#Change armor
function du-in:kit/all/armor/armor

#Play particles and sounds

execute if entity @s[scores={skeletonMode=1}] run particle minecraft:snowflake ~ ~ ~ 0.5 1 0.5 0 50 force
execute if entity @s[scores={skeletonMode=2}] run particle minecraft:spore_blossom_air ~ ~ ~ 0.5 1 0.5 10 50

execute if entity @s[scores={skeletonMode=1}] run playsound minecraft:entity.stray.death master @a ~ ~ ~ 1000 .5 1
execute if entity @s[scores={skeletonMode=2}] run playsound minecraft:entity.bogged.death master @a ~ ~ ~ 1000 .5 1

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 100000 1

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 100000 2
playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.05


#If not sabotaged, continue ability
xp set @s[tag=!sabotaged] 100 levels

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#End function
tag @s remove empower
tag @s remove sabotaged
tag @s remove kitActions
