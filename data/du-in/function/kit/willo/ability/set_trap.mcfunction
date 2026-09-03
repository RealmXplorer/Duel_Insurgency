#PLACE function
scoreboard players add @s willoTrapCount 1
execute if entity @s[tag=!void] run summon marker ~ ~ ~ {Tags:["willoTrap","ownerUnset","mapSpecific","projectile"]}
execute if entity @s[tag=void] run summon marker ~ ~ ~ {Tags:["willoTrap","ownerUnset","mapSpecific","void","projectile"]}

summon block_display ~ ~ ~ {Tags:["willoDisplay","mapSpecific"],block_state:{id:"minecraft:heavy_core"}}

#Tie marker to this Willo
execute store result score @n[type=marker,tag=willoTrap,tag=ownerUnset] player run scoreboard players get @s player 
tag @n[type=marker,tag=ownerUnset,tag=willoTrap,scores={player=0..}] remove ownerUnset


#Play sound and particles


#End Ability
clear @s #du-in:ability
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove empower