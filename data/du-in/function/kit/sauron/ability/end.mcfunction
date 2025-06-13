#tellraw @s[tag=sabotaged] [{text:"It's safe to use your ability again...",bold:true,color:green}]
#tag @s remove sabotaged
#tag @s remove glowing
#tag @s remove empower
#tag @s remove looking

xp set @s[tag=!stolen] 320 levels
tag @s[tag=stolen] add kitDone

tag @s remove cooldown
tag @s remove sabotaged

scoreboard players reset @s sauronTimer