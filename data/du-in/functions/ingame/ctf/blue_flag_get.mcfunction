#Give player tag for getting flag
tag @s add flagGot

#Kill flag item entity
execute at @e[type=item,tag=blueFlagItem] as @a[tag=team1,distance=..1,tag=!teamDead] run kill @e[tag=blueFlagItem,limit=1]

#Reset dropped flag timer
scoreboard players reset #main blueFlagTimer

#Mark flag as captured
tag @e[type=marker,tag=blueFlag] add captured

#Announce capture and play sound
tellraw @a ["",{"selector":"@a[tag=flagGot,tag=team1]","bold":true,"color":"dark_red"},{"text":" has taken the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag taken!","color":"red"}]

#Reset flag capture cooldown
scoreboard players reset #main blueFlagCooldown