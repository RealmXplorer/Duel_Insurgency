
tp @s 156 82 49 90 0
clear @s

playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5

effect give @s invisibility infinite 1 true

#Stop and start music
function du-in:music/lobby/stop/lobby
scoreboard players set @s music 0

#Titles
title @s title {text:"",color:red,bold:true}
title @s subtitle {text:"",color:red,bold:true}


stopsound @s record minecraft:music.free
#function du-in:music/free/free
execute at @s run playsound minecraft:music.free record @s[tag=!musicOff,tag=beatenGame] ~ ~ ~ 1 1 1
execute at @s run playsound minecraft:music.credits record @s[tag=!musicOff,tag=!beatenGame] ~ ~ ~ 1 1 1
function du-in:lobby/scheduled/credits

#Add sublobby tags
tag @s add credits
tag @s add subLobby

clear @s carrot_on_a_stick[item_model="filled_map"]

#Resets item status
function du-in:lobby/reset/item

#This is to prevent a bug.
execute if entity @s[scores={kitUseThrow=1..}] run function du-in:other/clear_ground_items

scoreboard players set @s creditsTimer 0
