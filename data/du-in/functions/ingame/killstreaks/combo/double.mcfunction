title @s times 1 15 3
title @s title {"text":"  ","color":"red","bold":true}
#title @s subtitle {"text":"Double Kill!","color":"red","bold":false}
playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 100 .5
playsound minecraft:kill.double master @a ~ ~ ~ 10000 1 1
title @s subtitle {"text":"☠☠","bold":false,"color":"blue"}
#tag @s add doubleKill