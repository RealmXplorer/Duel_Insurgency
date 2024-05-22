particle minecraft:poof ~ ~ ~ 0.2 0.7 0.2 0 100 force
playsound minecraft:item.shield.break master @a ~ ~ ~ 5 1.2
playsound minecraft:item.shield.break master @a ~ ~ ~ 5 1
title @s title {"text":" ","color":"red"}
title @s subtitle {"text":"You are now naked.","color":"red"}
clear @s #du-in:darwin_armor
scoreboard players set @s darwinTimer 100
