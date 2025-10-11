#Give player tag for getting flag
tag @s add flagGot
tag @s add otherFlag
tag @s add glowing

#Destroy flag
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ air destroy

#Announce capture and play sound
tag @e[type=marker,tag=redFlag] add captured
tellraw @a [{selector:"@a[tag=flagGot,tag=team2]", bold:true, color:blue},{text:" has taken the ", color:gray},{text:"Red ", bold:true, color:red},{text:"flag!", color:gray}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
title @a title [{text:"Red ", bold:true, color:dark_red}]
title @a subtitle [{text:"Flag Taken!", bold:true, color:red}]