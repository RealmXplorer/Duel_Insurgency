tag @a remove waveBreak

execute positioned as @e[type=marker,tag=pylon] run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1000 1
execute positioned as @e[type=marker,tag=pylon] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1

setblock 97 20 -107 minecraft:black_stained_glass

scoreboard players add #main wave 1



execute if score #main pylonsDestroyed matches 0 run scoreboard players set @a[tag=!spectating] gonersKilled 10
execute if score #main pylonsDestroyed matches 1 run scoreboard players set @a[tag=!spectating] gonersKilled 15
execute unless score #main pylonsDestroyed matches 0..1 run scoreboard players set @a[tag=!spectating] gonersKilled 20
execute as @a[gamemode=!spectator] run scoreboard players add @a[tag=!spectating] gonersKilled 12

execute if score #main pylonsDestroyed matches 3 run schedule function du-in:void/hazard/shock/prepare 20s

title @a title " "
title @a subtitle [{text:"Wave ",color:light_purple,bold:true},{"score":{"name":"#main","objective":"wave"},color:dark_purple,bold:true},{text:"/2",color:dark_purple,bold:true}]

execute if score #main pylonsDestroyed matches ..2 run tellraw @a [{text:"The Pylon ",bold:true,color:dark_purple},{text:"reignites!...",color:light_purple}]
execute if score #main pylonsDestroyed matches 3 run tellraw @a [{text:"The world is ending...",bold:true,color:dark_purple}]


bossbar set gast:pylon name [{text:"Pylon Stabilization: ",bold:true,color:white},{"score":{"name":"@a[gamemode=adventure,tag=void,limit=1]","objective":"gonersKilled"},color:red,bold:true},{text:" Goners left",color:gray,bold:true}]
execute store result bossbar gast:pylon max run scoreboard players get @a[gamemode=adventure,tag=void,limit=1] gonersKilled

