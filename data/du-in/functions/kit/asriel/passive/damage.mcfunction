execute if score @s team = @a[limit=1,distance=0.05..5,sort=nearest,tag=!onTeam] team run tag @a[limit=1,distance=0.05..5,sort=nearest,tag=!onTeam] add onTeam
execute if entity @s[tag=!void] run effect give @a[distance=0.05..5,tag=!onTeam,gamemode=!spectator] minecraft:instant_damage 1 1 true
execute if entity @s[tag=void] as @e[type=skeleton,distance=0.05..5] run damage @s 8
tag @a[tag=onTeam] remove onTeam
tag @s add asrielSaber
clear @s wooden_sword
scoreboard players set @s asrielSaberTimer 80
playsound minecraft:asriel.saber master @a ~ ~ ~ 5 1
particle minecraft:firework ~ ~ ~ 1 ~ 1 1 100 force
scoreboard players reset @s asrielHitLand