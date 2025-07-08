scoreboard players set @s papyrusHitTimer 30

execute store result score @s team run scoreboard players get @e[tag=papyrusFind,tag=!boneIDSet,limit=1] team
execute store result score @s player run scoreboard players get @e[tag=papyrusFind,tag=!boneIDSet,limit=1] player

tag @s add boneIDSet