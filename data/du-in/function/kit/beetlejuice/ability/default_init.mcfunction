#Mark players
tag @s[tag=!sabotaged] add beetleJuice

#Summon Fangs
execute if entity @s[tag=!sabotaged,tag=!teamMode] as @a[gamemode=adventure,tag=playing,tag=!teamDead,tag=!beetleJuice] at @s run summon evoker_fangs ~ ~ ~ {Tags:["beetleGhost","unsetTime","mapSpecific",projectile]}

#Summon Teammode Fangs
execute if entity @s[tag=!sabotaged,team=Red] as @a[gamemode=adventure,tag=playing,tag=!teamDead,tag=!beetleJuice] unless score @s team = @a[scores={kit=1006},tag=kitActions,limit=1] team at @s run summon evoker_fangs ~ ~ ~ {Tags:["beetleGhost","unsetTime","mapSpecific",projectile]}
execute if entity @s[tag=!sabotaged,team=Blue] as @a[gamemode=adventure,tag=playing,tag=!teamDead,tag=!beetleJuice] unless score @s team = @a[scores={kit=1006},tag=kitActions,limit=1] team at @s run summon evoker_fangs ~ ~ ~ {Tags:["beetleGhost","unsetTime","mapSpecific",projectile]}

execute if entity @s[tag=sabotaged] run summon evoker_fangs ~ ~ ~ {Tags:["beetleGhost","unsetTime","mapSpecific",projectile]}

#Set timer
#execute as @e[type=vex,tag=unsetTime] run scoreboard players set @s beetleGhostTimer 160
#execute at @e[type=vex,tag=unsetTime] run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 1 0.75
#execute at @e[type=vex,tag=unsetTime] run playsound minecraft:entity.happy_ghast.death master @a ~ ~ ~ 0.5 0.5


#tag @e[type=vex,tag=unsetTime,scores={beetleGhostTimer=0..}] remove unsetTime


execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#Play sounds
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1

#Message
tellraw @a[tag=!beetleJuice] {text:"GAAAH!",bold:true,color:red}

#Set Enderpearls to player's UUIDs
#execute as @e[type=ender_pearl,tag=blakeTP,tag=notAssigned] at @s run function du-in:kit/paz/ability/set_uuid

#Set Ability timer for Beetlejuice
scoreboard players set @s beetleGhostTimer 160
tag @s add scareDuration

#Give Beetlejuice bonus effects
effect give @s strength 2 0 true

#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
xp set @s[tag=!stolen] 320 levels

#Remove Beetlejuice exemption
tag @s remove beetleJuice

#Remove sabotaged
tag @s remove sabotaged

#End ability
tag @s remove kitActions