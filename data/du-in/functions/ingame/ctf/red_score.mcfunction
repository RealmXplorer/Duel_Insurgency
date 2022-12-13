#Add 1 to Red team's flag captures
scoreboard players add Red flagGot 1

#Replace Blue's flag
execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy

#Mark Blue's flag as uncaptured
tag @e[type=marker,tag=blueFlag] remove captured

#Add point to Red team
scoreboard players add #main redPoints 1

#Announce capture and play sounds
tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" has captured the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 999999 1
title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag captured!","color":"red"}]

#Remove tag "flagGot"
tag @s remove flagGot