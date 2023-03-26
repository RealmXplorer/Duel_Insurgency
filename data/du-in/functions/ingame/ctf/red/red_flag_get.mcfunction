#Give player tag for getting flag
tag @s add flagGot

#Kill flag item entity
execute at @e[type=item,tag=redFlagItem] as @a[tag=team2,distance=..1,tag=!teamDead] run kill @e[tag=redFlagItem,limit=1]

#Reset dropped flag timer
scoreboard players reset #main redFlagTimer

#Mark flag as captured
tag @e[type=marker,tag=redFlag] add captured

#Announce capture and play sound
tellraw @a ["",{"selector":"@a[tag=team2,tag=flagGot]","bold":true,"color":"blue"},{"text":" has taken the ","color":"gray"},{"text":"Red ","bold":true,"color":"red"},{"text":"flag!","color":"gray"}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
title @a title [{"text":"Red ","bold":true,"color":"dark_red"},{"text":"flag taken!","color":"red"}]

#Reset flag capture cooldown
scoreboard players reset #main redFlagCooldown