tag @a add free

tag @a remove win
tag @a remove lose
tag @a remove spectating
tag @a remove endSeq

tag @a remove fromVoid
tag @a remove timeFree
tag @a remove cavesLock
tag @a remove hiveLock
tag @a remove daLock
tag @a remove ebbotLock
tag @a remove d2Lock
tag @a remove harvestLock
tag @a remove mirageLock
tag @a remove mazeLock


scoreboard players set @a music 0
scoreboard players set @a ambience 0

gamemode adventure @a

team leave @a

tp @a 7974 7 265
spawnpoint @a 7974 7 265

scoreboard players set @a creditsTimer 0

summon minecraft:block_display 8017.002 5 279.5 {Tags:["voidDoor"],block_state:{Name:"minecraft:black_concrete"},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 2.000f, 0.000f,-1.000f,0.000f, 0.000f, 0.010f,-0.005f,0.000f, 0.000f, 0.000f,1.000f],Rotation:[90F,0F]}

advancement grant @a[tag=!spectating] only du-in:void/origins

#scoreboard objectives setdisplay sidebar
scoreboard players reset #main endTime