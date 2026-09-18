#PLACE function
scoreboard players add @s willoTrapCount 1
execute if entity @s[tag=!void] run summon marker ~ ~ ~ {Tags:["willoTrap","ownerUnset","mapSpecific","projectile","willoMark"]}
execute if entity @s[tag=void] run summon marker ~ ~ ~ {Tags:["willoTrap","ownerUnset","mapSpecific","void","projectile","willoMark"]}

#execute positioned as @n[type=marker,tag=willoTrap,tag=ownerUnset] run 

summon block_display ~-.5 ~ ~-.5 {Tags:["willoDisplay","mapSpecific","willoMark","ownerUnset"],block_state:{id:"minecraft:heavy_core"}}

#summon interaction to remove trap.
summon interaction ~ ~ ~ {width:1f,height:1f,response:1b,Tags:["willoRemove","mapSpecific","ownerUnset","willoMark"]}

#Tie marker to this Willo
execute store result score @n[distance=..2,tag=willoTrap,tag=ownerUnset,type=marker] player run scoreboard players get @s player 
tag @n[distance=..2,tag=ownerUnset,tag=willoTrap,scores={player=0..},type=marker] remove ownerUnset

#Tie Interaction to this Willo
execute store result score @n[distance=..2,tag=willoRemove,tag=ownerUnset,type=interaction] player run scoreboard players get @s player 
tag @n[distance=..2,tag=ownerUnset,tag=willoRemove,scores={player=0..},type=interaction] remove ownerUnset

#Tie display to this Willo
execute store result score @n[distance=..2,tag=willoDisplay,tag=ownerUnset,type=block_display] player run scoreboard players get @s player 
tag @n[distance=..2,tag=ownerUnset,tag=willoDisplay,scores={player=0..},type=block_display] remove ownerUnset

#Play sound and particles

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

#End Ability
clear @s #du-in:ability
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove empower
tag @s remove kitActions
