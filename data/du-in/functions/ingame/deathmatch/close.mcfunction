title @s title {"text":"  ","color":"red","bold":true}
title @s subtitle {"text":"One Life Left!","color":"red","bold":true}
execute if entity @s[tag=!win,tag=!lose,tag=!winend] run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1000000000 1
tag @s add dmClose