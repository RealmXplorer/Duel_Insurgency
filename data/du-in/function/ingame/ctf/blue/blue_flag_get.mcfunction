#Announce capture and play sound
execute if entity @s[tag=!flagGot] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has taken the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
execute if entity @s[tag=!flagGot] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
execute if entity @s[tag=!flagGot] run title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag taken!","color":"red"}]
execute if entity @s[tag=!flagGot] run scoreboard players reset #main blueFlagTimer

execute if entity @s[tag=flagGot] run title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=flagGot] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" dropped the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
execute if entity @s[tag=flagGot] run scoreboard players set #main blueFlagTimer 200

#Give player tag for getting flag
tag @s[tag=!flagGot] add otherFlag
tag @s[tag=!flagGot] add glowing
tag @s[tag=!flagGot] add flagGot

#Mark flag as captured
tag @e[type=marker,tag=blueFlag] add captured

#Reset flag capture cooldown
advancement revoke @s only du-in:gamemode/red_kill_blue_own_flag