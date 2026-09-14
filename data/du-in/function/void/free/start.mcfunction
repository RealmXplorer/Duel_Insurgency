forceload add 8054 340 7886 187
tag @a add free
tag @a add beatenGame

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
tag @a remove flameLock
tag @a remove ricardoLock
tag @a remove lgLock
tag @a remove harvestLock
tag @a remove mirageLock
tag @a remove mazeLock
tag @a remove mcLock
tag @a remove zigLock
tag @a remove nethLock
tag @a remove moraLock
tag @a remove ctLock
tag @a remove duneLock
tag @a remove bowlLock

gamemode adventure @a
scoreboard players set @a music 0
#scoreboard players set @a ambience 0
function du-in:ingame/scheduled/ambience/init
stopsound @a record
#function du-in:music/free/free
execute unless entity @a[tag=partyLeader,tag=execute.Autumn] as @a[tag=free,tag=!musicOff] at @s run playsound du-in:music.free record @s ~ ~ ~ 1 1 1
execute if entity @a[tag=partyLeader,tag=execute.Autumn] as @a[tag=free] at @s run playsound minecraft:music.the_end record @s ~ ~ ~ 1 1 1

gamemode adventure @a

team leave @a

tp @a 7974 7 265
spawnpoint @a 7974 7 265

execute unless entity @a[tag=partyLeader,tag=execute.Autumn] run fillbiome 8054 -8 340 7886 29 187 minecraft:forest replace dappled_forest
execute unless entity @a[tag=partyLeader,tag=execute.Autumn] run fill 8054 -8 340 7886 29 187 minecraft:oak_leaves replace orange_poplar_leaves
execute unless entity @a[tag=partyLeader,tag=execute.Autumn] run fill 8054 -8 340 7886 29 187 minecraft:birch_leaves replace yellow_poplar_leaves
execute unless entity @a[tag=partyLeader,tag=execute.Autumn] run fill 8054 -8 340 7886 29 187 minecraft:dark_oak_leaves replace red_poplar_leaves

#Execute if egg time
execute if entity @a[tag=partyLeader,tag=execute.Autumn] run fillbiome 8054 -8 340 7886 29 187 minecraft:dappled_forest replace forest
execute if entity @a[tag=partyLeader,tag=execute.Autumn] run fill 8054 -8 340 7886 29 187 minecraft:orange_poplar_leaves replace oak_leaves
execute if entity @a[tag=partyLeader,tag=execute.Autumn] run fill 8054 -8 340 7886 29 187 minecraft:yellow_poplar_leaves replace birch_leaves
execute if entity @a[tag=partyLeader,tag=execute.Autumn] run fill 8054 -8 340 7886 29 187 minecraft:red_poplar_leaves replace dark_oak_leaves

scoreboard players set @a creditsTimer 0

advancement grant @a[tag=free] only du-in:void/origins

bossbar set gast:pylon4 visible false
summon minecraft:block_display 8017.002 5 279.5 {Tags:["voidDoor"],block_state:{Name:"minecraft:black_concrete"},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 2.000f, 0.000f,-1.000f,0.000f, 0.000f, 0.010f,-0.005f,0.000f, 0.000f, 0.000f,1.000f],Rotation:[90F,0F]}
forceload remove 8054 340 7886 187
#scoreboard objectives setdisplay sidebar
