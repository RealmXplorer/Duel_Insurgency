scoreboard players add @s pussRayStep 1
tp @s ^ ^ ^1
particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 20 force

#summon minecraft:block_display ~ ~1 ~ {Tags:["flame","notSet","projectile"],block_state:{Name:"minecraft:fire"},interpolation_duration:0,start_interpolation:0,transformation:[1f,0f,0f,-0.5f,0f,2f,0f,-1f,0f,0f,1f,-0.5f,0f,0f,0f,1f],brightness:{sky:15,block:15}}
#summon minecraft:marker ~ ~1 ~ {Tags:["flame","notSet","projectile"]}
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 1
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 .5
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 2
execute if entity @a[gamemode=!spectator,tag=playing,distance=..1] run function du-in:kit/puss/ability/hit

execute if entity @s[scores={pussRayStep=14..}] run function du-in:kit/puss/ability/test

#execute unless block ~ ~ ~ #du-in:sans_valid run function du-in:kit/puss/ability/test

#execute unless block ~ ~ ~ #du-in:sans_valid run tag @s add hitBlock

#execute unless block ~ ~1 ~ #du-in:sans_valid run tag @s add hitBlock

execute unless block ^ ^ ^ #du-in:sans_valid unless block ^ ^ ^1 #du-in:sans_valid unless block ~ ~1 ~ #du-in:sans_valid unless block ~ ~ ~ #du-in:sans_valid run tag @s add hitBlock

#execute unless block ^ ^ ^1 #du-in:sans_valid run tag @s add hitBlock


execute if entity @s[tag=hitBlock] run function du-in:kit/puss/ability/test

execute positioned ^ ^ ^1 if entity @s[scores={pussRayStep=..15},tag=!hitBlock] run function du-in:kit/puss/ability/raycast

#execute if entity @s[scores={pussRayStep=..15}] run function du-in:kit/puss/ability/raycast
#execute at @s run summon marker ~ ~ ~ {Tags:["tpMark"]}
#execute at @s anchored eyes run tp @e[type=marker,tag=tpMark,limit=1] ^ ^ ^ ^ ^