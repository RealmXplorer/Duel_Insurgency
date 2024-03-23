execute as @a[scores={kit=1003},tag=kitActions] at @s unless block ~ ~-1 ~ #du-in:sus_invalid unless block ~ ~ ~ minecraft:lava run function du-in:kit/impostor/ability/set_spot

scoreboard players set @e[type=marker,tag=meetingSpot] impostTimer 30

schedule function du-in:kit/impostor/ability/meeting 30t

execute unless entity @s[tag=sabotaged] as @a[tag=playing,tag=!spectating,tag=!working] unless score @a[tag=meetingCall,limit=1] team = @s team run tag @s[tag=!flagGot] add meeting
tag @s[tag=sabotaged] add meeting

effect give @a[tag=meeting] minecraft:fire_resistance 1 255 true

playsound minecraft:sus.emerg master @a ~ ~ ~ 2000 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1

execute as @a[tag=meeting] at @s run title @a title {"text":"Emergency","color":"red","bold":true}
execute as @a[tag=meeting] at @s run title @a subtitle {"text":"Meeting!","color":"red","bold":true}

xp set @s[tag=!stolen] 600 levels

tag @s remove sabotaged
tag @s remove meetingCall
tag @s remove kitActions
