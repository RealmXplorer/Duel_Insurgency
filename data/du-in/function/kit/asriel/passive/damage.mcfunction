
execute as @a[gamemode=adventure,distance=0.05..5] unless score @s team = @p[scores={kit=11},tag=asrielCharge] team run damage @s 6 magic by @p[scores={kit=11},tag=asrielCharge]

#execute if score @s team = @p[distance=0.05..5,tag=!onTeam] team run tag @p[distance=0.05..5,tag=!onTeam] add onTeam

#execute if entity @s[tag=!void] as @a[distance=0.05..5,tag=!onTeam,gamemode=!spectator] run damage @s 4
execute if entity @s[tag=void] as @e[type=skeleton,distance=0.05..5] run damage @s 10 magic by @p[scores={kit=11},tag=asrielCharge]

#tag @a[tag=onTeam] remove onTeam
tag @s add asrielSaber
clear @s wooden_sword
scoreboard players set @s asrielSaberTimer 60

playsound minecraft:asriel.saber master @a ~ ~ ~ 5 1
particle minecraft:firework ~ ~ ~ 1 ~ 1 1 100 force

scoreboard players reset @s asrielCharge
tag @s remove asrielCharge