tellraw @s[tag=sabotaged] [{text:"It's safe to use your ability again...",bold:true,color:green}]
tag @s remove sabotaged
tag @s remove glowing
tag @s remove empower
tag @s remove looking
tag @s add kitDone

scoreboard players reset @s sauronTimer