tag @a remove waveBreak
execute positioned 113 5 -91 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1000 1
execute positioned 97 20 -107 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1

setblock 97 20 -107 minecraft:black_stained_glass

scoreboard players add #main wave 1

execute if score #main pylonsDestroyed matches ..2 run scoreboard players set @a gonersKilled 30
execute if score #main pylonsDestroyed matches 3 run scoreboard players set @a gonersKilled 45

title @a title " "
title @a subtitle [{"text":"Wave ","color":"light_purple","bold":true},{"score":{"name":"#main","objective":"wave"},"color":"dark_purple","bold":true},{"text":"/2","color":"dark_purple","bold":true}]

execute if score #main pylonsDestroyed matches ..2 run tellraw @a [{"text":"The Pylon ","bold":true,"color":"dark_purple"},{"text":"reignites!...","color":"light_purple"}]
execute if score #main pylonsDestroyed matches 3 run tellraw @a [{"text":"The world is ending...","bold":true,"color":"dark_purple"}]

scoreboard players set #main waveCooldown 100

bossbar set gast:pylon name ["",{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@r","objective":"gonersKilled"},"color":"red"},{"text":" Goners left","color":"gray"}]
execute store result bossbar gast:pylon max run scoreboard players get @a[tag=partyLeader,tag=void,limit=1] gonersKilled

scoreboard players set #main waveCooldown 0