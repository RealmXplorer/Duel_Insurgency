#Announce capture and play sound
execute if entity @s[tag=!flagGot] run tellraw @a [{selector:"@s", bold:true, color:blue},{text:" has taken the ", color:gray},{text:"Red ", bold:true, color:red},{text:"flag!", color:gray}]
execute if entity @s[tag=!flagGot] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999 1
execute if entity @s[tag=!flagGot] run title @a title [{text:"Red ", bold:true, color:dark_red},{text:"flag taken!", color:red}]
execute if entity @s[tag=!flagGot] run scoreboard players reset #main redFlagTimer

execute if entity @s[tag=flagGot] run scoreboard players set #main redFlagTimer 200
execute if entity @s[tag=flagGot] run title @a title [{text:"Red ", bold:true, color:dark_red},{text:"flag dropped!", color:red}]
execute if entity @s[tag=flagGot] run tellraw @a [{text:"Blue Team", bold:true, color:blue},{text:" dropped the ", color:gray},{text:"Red ", bold:true, color:red},{text:"flag!", color:gray}]

#Give player tag for getting flag
tag @s[tag=!flagGot] add otherFlag
tag @s[tag=!flagGot] add glowing
tag @s[tag=!flagGot] add flagGot

#Mark flag as captured
tag @e[type=marker,tag=redFlag] add captured

#Reset flag capture cooldown
advancement revoke @s only du-in:gamemode/blue_kill_red_own_flag
