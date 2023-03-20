particle minecraft:angry_villager ~ ~ ~ 0 0 0 1 1

summon minecraft:block_display ~ ~1 ~ {Tags:["flame","notSet","projectile"],block_state:{Name:"minecraft:fire"},interpolation_duration:0,start_interpolation:0,transformation:[1f,0f,0f,-0.5f,0f,2f,0f,-1f,0f,0f,1f,-0.5f,0f,0f,0f,1f],brightness:{sky:15,block:15}}
scoreboard players set @e[type=block_display,tag=flame,tag=notSet] flameTimer 60
tag @e[type=block_display,tag=flame,tag=notSet,scores={flameTimer=1..}] remove notSet

execute positioned ^ ^ ^3 if entity @s[distance=..25] run function du-in:kit/death/ability/raycast