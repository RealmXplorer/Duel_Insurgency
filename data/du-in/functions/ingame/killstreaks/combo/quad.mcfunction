title @s times 1 15 4
title @s title {"text":"  ","color":"red","bold":true}
#title @s subtitle {"text":"Massacre!","color":"red","bold":true}
playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 100 1
playsound minecraft:kill.quad master @a ~ ~ ~ 10000 1 1
playsound minecraft:soundeffect.boom master @a ~ ~ ~ .5 1.5
title @s title {"text":"","bold":false,"color":"red"}
title @s subtitle {"text":"☠☠☠☠","bold":false,"color":"blue"}
advancement grant @s only du-in:quad
#tag @s add quadKill