title @s times 4 20 5
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 20 0.4
title @s[scores={deathTimer=140}] title {"text":"7","bold":true,"color":"dark_red"} 

title @s[scores={deathTimer=120}] title {"text":"6","bold":true,"color":"dark_red"} 

title @s[scores={deathTimer=100}] title {"text":"5","bold":true,"color":"red"} 

title @s[scores={deathTimer=80}] title {"text":"4","bold":true,"color":"gold"} 

title @s[scores={deathTimer=60}] title {"text":"3","bold":true,"color":"yellow"} 

title @s[scores={deathTimer=40}] title {"text":"2","bold":true,"color":"green"} 

title @s[scores={deathTimer=20}] title {"text":"1","bold":true,"color":"dark_green"} 

execute unless entity @s[tag=!ranMode] run title @s[scores={deathTimer=10..}] subtitle {"text":"Open inventory to switch kit!","color":"red","bold":true}
scoreboard players set @s deathCountdown 20