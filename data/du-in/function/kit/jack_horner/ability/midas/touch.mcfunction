#Start magic ability
tag @s add midasTouched
playsound minecraft:entity.zombie_villager.cure master @a
scoreboard players set @s goldTimer 20
particle block gold_block ~ ~1 ~ .5 1 .5 3 50 normal

execute at @s run summon minecraft:block_display ~ ~1 ~ {block_state:{Name:"minecraft:gold_block"},interpolation_duration:0,start_interpolation:0,transformation:[1f,0f,0f,-0.5f,0f,2f,0f,-1f,0f,0f,1f,-0.5f,0f,0f,0f,1f],Tags:["gold","notSet"]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["gold","notSet"]}
execute rotated as @s run tp @e[type=marker,tag=gold,tag=notSet,limit=1,sort=nearest] ~ ~ ~ ~ ~
scoreboard players set @e[tag=gold,tag=notSet] goldTimer 20


tag @e[tag=notSet,tag=gold,scores={goldTimer=-1..}] remove notSet

advancement revoke @s only du-in:kit/midas