particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0 20 force

#summon minecraft:block_display ~ ~1 ~ {Tags:["flame","notSet","projectile"],block_state:{Name:"minecraft:fire"},interpolation_duration:0,start_interpolation:0,transformation:[1f,0f,0f,-0.5f,0f,2f,0f,-1f,0f,0f,1f,-0.5f,0f,0f,0f,1f],brightness:{sky:15,block:15}}
#summon minecraft:marker ~ ~1 ~ {Tags:["flame","notSet","projectile"]}
#playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 1
#playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 .5
#playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 2
execute as @a[gamemode=!spectator,tag=playing,distance=..1.25] run damage @s 5 minecraft:generic

#execute as @e run damage @s 4 minecraft:generic by @a[scores={kit=21},tag=kitActions,limit=1]


execute positioned ^ ^ ^1 if entity @s[distance=..10] run function du-in:kit/cuphead/ability/charged/raycast
