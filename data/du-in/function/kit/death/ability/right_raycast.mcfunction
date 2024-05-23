particle minecraft:angry_villager ~ ~ ~ 0 0 0 1 1

summon minecraft:block_display ~ ~1 ~ {Tags:["flame","notSet","projectile"],block_state:{Name:"minecraft:fire"},interpolation_duration:0,start_interpolation:0,transformation:[1f,0f,0f,-0.5f,0f,2f,0f,-1f,0f,0f,1f,-0.5f,0f,0f,0f,1f],brightness:{sky:15,block:15}}
#summon minecraft:marker ~ ~1 ~ {Tags:["flame","notSet","projectile"]}

scoreboard players set @e[type=block_display,tag=flame,tag=notSet] flameTimer 100
execute as @e[type=block_display,tag=flame,tag=notSet] store result score @s team run scoreboard players get @p[scores={kit=14},tag=kitActions] team
tag @e[type=block_display,tag=flame,tag=notSet,scores={flameTimer=1..}] remove notSet
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 1
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 .5
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 2

execute positioned ^-.4 ^ ^2 if entity @s[distance=..20] run function du-in:kit/death/ability/right_raycast