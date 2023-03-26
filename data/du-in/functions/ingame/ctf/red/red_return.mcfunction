#Set a flag back down
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Play sound and announce return
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 999999 1
title @a title [{"text":"Red ","bold":true,"color":"dark_red"},{"text":"flag returned!","color":"red"}]
tellraw @a ["",{"text":"Red Team ","bold":true,"color":"red"},{"text":"returned the ","color":"gray"},{"text":"Red ","bold":true,"color":"red"},{"text":"flag!","color":"gray"}]

#Kill any flag items on the ground
kill @e[type=item,tag=redFlagItem]

#Mark flag as uncaptured
tag @e[type=marker,tag=redFlag] remove captured

#End function
scoreboard players reset #main redFlagTimer