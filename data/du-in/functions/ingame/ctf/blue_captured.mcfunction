#Give player tag for getting flag
tag @s add flagGot

#Destroy flag
execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ air destroy

#Set the flag marker to "captured"
tag @e[type=marker,tag=blueFlag] add captured

#Announce capture and play sound
tellraw @a [{"selector":"@a[tag=flagGot,tag=team1]","bold":true,"color":"red"},{"text":" has taken the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag taken!","color":"red"}]