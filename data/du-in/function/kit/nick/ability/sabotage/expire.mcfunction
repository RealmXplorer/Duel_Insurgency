tellraw @s[tag=empower] [{text:"Your ability is no longer empowered...",bold:true,color:red}]

tellraw @s[tag=sabotaged] [{text:"It's safe to use your ability again...",bold:true,color:green}]
clear @s[tag=sabotaged,tag=!inspireSabotage] #du-in:ability
xp set @s[tag=sabotaged,tag=!inspireSabotage] 80 levels
tag @s remove inspireSabotage
tag @s remove sabotaged
tag @s remove empower
scoreboard players reset @s sabotageTimer