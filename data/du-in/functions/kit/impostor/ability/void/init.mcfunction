execute as @a[scores={kit=1003},tag=kitActions] at @s unless block ~ ~-1 ~ #du-in:sus_invalid unless block ~ ~ ~ minecraft:lava run function du-in:kit/impostor/ability/set_spot

scoreboard players set @e[type=marker,tag=meetingSpot] impostTimer 30
schedule function du-in:kit/impostor/ability/void/meeting 30t

playsound minecraft:sus.emerg master @a ~ ~ ~ 2000 1

execute as @e[type=skeleton,tag=gonerThing] run tag @s add meeting

xp set @s[tag=!stolen] 600 levels

tag @s remove meetingCall
tag @s remove kitActions
