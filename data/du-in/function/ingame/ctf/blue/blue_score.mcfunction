#Add 1 to Blue team's flag captures
scoreboard players add Blue flagGot 1

#Replace Red's flag
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Mark Red's flag as uncaptured
tag @e[type=marker,tag=redFlag] remove captured

#Add point to Blue team
scoreboard players add #main bluePoints 1

#Announce capture and play sounds
tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" has captured the ","color":"gray"},{"text":"Red ","bold":true,"color":"red"},{"text":"flag!","color":"gray"}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 999999 1
title @a title [{"text":"Red ","bold":true,"color":"dark_red"}]
title @a subtitle [{"text":"Flag Captured!","color":"red","bold":true}]

#Remove tag "flagGot"
tag @s remove flagGot
tag @s remove otherFlag
tag @s remove glowing