#tellraw @s[tag=sabotaged] [{text:"It's safe to use your ability again...",bold:true,color:green}]
#tag @s remove sabotaged
tag @s remove glowing
tag @s remove empower


scoreboard players reset @s seenTimer