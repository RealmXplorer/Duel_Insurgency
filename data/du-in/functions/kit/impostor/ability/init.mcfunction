execute as @a[scores={kit=1003},tag=kitActions] at @s unless block ~ ~-1 ~ #du-in:sus_invalid unless block ~ ~ ~ minecraft:lava run function du-in:kit/impostor/ability/set_spot

scoreboard players set @e[type=marker,tag=meetingSpot] impostTimer 30

execute as @a[tag=playing,tag=!spectating,tag=!working] unless score @a[tag=meetingCall,limit=1] team = @s team run tag @s[tag=!flagGot] add meeting

xp set @s[tag=!stolen] 600 levels

tag @s remove meetingCall
tag @s remove kitActions
