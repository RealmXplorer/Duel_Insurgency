#Kill if previous ability
kill @e[type=ender_pearl,tag=blakeTP]

#Remove exemption from other Pazes
tag @a remove hacker

#Add exemption for executing PAZ
tag @s[tag=!sabotaged] add hacker

#Mark all players for DDoS
#execute unless entity @s[tag=sabotaged] as @a[gamemode=!spectator,tag=!hacker] at @s run summon ender_pearl ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:ender_pearl",Count:1b,tag:{CustomModelData:100}},Tags:["blakeTP","notAssigned"],Owner:[I;0,0,0,0]}
execute unless entity @s[tag=sabotaged] as @a[gamemode=!spectator,tag=!hacker] at @s run summon ender_pearl ~ ~ ~ {NoGravity:1b,Owner:[I;0,0,0,0],Tags:["blakeTP","notAssigned"],Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:item_model":"du-in:abilities/disconnect"}}}

#execute if entity @s[tag=sabotaged] run summon ender_pearl ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:ender_pearl",Count:1b,tag:{CustomModelData:100}},Tags:["blakeTP","notAssigned"],Owner:[I;0,0,0,0]}
execute if entity @s[tag=sabotaged] run summon ender_pearl ~ ~ ~ {NoGravity:1b,Owner:[I;0,0,0,0],Tags:["blakeTP","notAssigned"],Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:item_model":"du-in:abilities/disconnect"}}}

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#Play sounds
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 .5
playsound minecraft:ui.button.click master @a ~ ~ ~ 10 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1

#Message
tellraw @a[tag=!hacker] {text:"You lost connection!",bold:true,color:red}

#Set Enderpearls to player's UUIDs
execute as @e[type=ender_pearl,tag=blakeTP,tag=notAssigned] at @s run function du-in:kit/paz/ability/set_uuid

#Set rubberband timer
scoreboard players set @s blakeTimer 60
tag @s add blakeDuration

#Give Paz bonus effects
effect give @s speed 2 0 true
effect give @s strength 2 0 true

#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
xp set @s[tag=!stolen] 600 levels

#Remove PAZ teleport exemption
tag @s remove hacker

#Remove sabotaged
tag @s remove sabotaged

#End ability
tag @s remove kitActions