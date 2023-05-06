#Set a flag back down
execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy

#Play sound and announce return
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 999999 1
title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag returned!","color":"red"}]
tellraw @a ["",{"text":"Blue Team ","bold":true,"color":"blue"},{"text":"returned the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]

#Mark flag as uncaptured
tag @e[type=marker,tag=blueFlag] remove captured

tag @s remove ownFlag
tag @s remove flagGot
#End function
scoreboard players reset #main blueFlagTimer