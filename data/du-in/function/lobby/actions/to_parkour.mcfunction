tp @s 643 6 -149 0 0
tag @s add parkour
tag @s add subLobby
stopsound @s record
scoreboard players set @s music 0
clear @s
title @s title {text:"",color:red,bold:true}
title @s subtitle {text:"",color:red,bold:true}
function du-in:lobby/item_reset
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 100 1

#function du-in:lobby/scheduled/parkour