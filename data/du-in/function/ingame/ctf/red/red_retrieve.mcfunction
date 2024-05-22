# #Announce capture and play sound
execute if entity @s[tag=flagGot] run scoreboard players set #main redFlagTimer 200
execute if entity @s[tag=flagGot] run title @a title [{"text":"Red ","bold":true,"color":"dark_red"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=flagGot] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" dropped the ","color":"gray"},{"text":"Red ","bold":true,"color":"red"},{"text":"flag!","color":"gray"}]

# #Mark flag as captured
tag @e[type=marker,tag=redFlag] add captured

#Reset flag capture cooldown
advancement revoke @s only du-in:gamemode/red_kill_blue_flag