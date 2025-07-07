execute unless entity @s[scores={checkpoint=1..}] run tp @s 643 6 -149 0 0
execute if entity @s[scores={checkpoint=1}] run tp @s 650 13 -125 0 0
execute if entity @s[scores={checkpoint=2}] run tp @s 641 3 -102 180 0
execute if entity @s[scores={checkpoint=3}] run tp @s 634 -23 -105 90 0
execute if entity @s[scores={checkpoint=4}] run tp @s 636 -26 -74 -90 0
tag @s add parkour
tag @s add subLobby
stopsound @s record
scoreboard players set @s music 0
clear @s
title @s title {text:"",color:red,bold:true}
title @s subtitle {text:"",color:red,bold:true}
function du-in:lobby/reset/item
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 100 1

#function du-in:lobby/scheduled/parkour