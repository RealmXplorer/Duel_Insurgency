execute unless entity @s[scores={checkpoint=1..}] run tp @s 643 6 -149 0 0
execute if entity @s[scores={checkpoint=1}] run tp @s 650 13 -125 0 0
execute if entity @s[scores={checkpoint=2}] run tp @s 641 3 -102 180 0
execute if entity @s[scores={checkpoint=3}] run tp @s 634 -23 -105 90 0
execute if entity @s[scores={checkpoint=4}] run tp @s 636 -26 -74 -90 0
execute if entity @s[scores={checkpoint=5}] run tp @s 617 -19 -69 90 0
execute if entity @s[scores={checkpoint=6}] run tp @s 600 -9 -68 130 0
execute if entity @s[scores={checkpoint=7}] run tp @s 598 32 -53 0 0 
execute if entity @s[scores={checkpoint=8}] run tp @s 594 36 -37 0 0
execute if entity @s[scores={checkpoint=9}] run tp @s 601 36 -18 -100 0
execute if entity @s[scores={checkpoint=10}] run tp @s 625 45 -33 -90 0
execute if entity @s[scores={checkpoint=11}] run tp @s 675 -47 -176 67 0

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