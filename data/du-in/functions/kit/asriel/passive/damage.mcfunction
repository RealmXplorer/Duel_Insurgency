execute if score @s team = @a[limit=1,distance=0.05..5,sort=nearest,tag=!onTeam] team run tag @a[limit=1,distance=0.05..5,sort=nearest,tag=!onTeam] add onTeam
effect give @e[distance=0.05..5,tag=!onTeam,type=!armor_stand] minecraft:instant_damage 1 1 true
tag @a[tag=onTeam] remove onTeam
tag @s add asrielSaber
playsound minecraft:asriel.saber master @a ~ ~ ~ 5 1
particle minecraft:firework ~ ~ ~ 1 ~ 1 1 100 force
scoreboard players reset @s asrielHitLand