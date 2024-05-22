# #Announce capture and play sound
execute if entity @s[tag=flagGot] run title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=flagGot] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" dropped the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
execute if entity @s[tag=flagGot] run scoreboard players set #main blueFlagTimer 200

# #Mark flag as captured
 tag @e[type=marker,tag=blueFlag] add captured

#Reset flag capture cooldown
advancement revoke @s only du-in:gamemode/blue_kill_red_flag

