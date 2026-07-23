tag @s add willoShoot
playsound du-in:kit.willo.revolver_shoot master @a ~ ~ ~ 1 1

#execute positioned ~ ~1 ~ positioned ^ ^ ^1 if entity @s[distance=..30] run function du-in:kit/willo/revolver/raycast

#execute positioned ~ ~1 ~ positioned ^ ^ ^1 run function du-in:kit/willo/revolver/raycast

summon marker ^ ^1 ^1 {Tags:["willoBullet","unset","mapSpecific","projectile"]}
scoreboard players set @e[type=marker,distance=..2,tag=willoBullet,tag=unset] willoBulletTravel 120
execute as @e[type=marker,tag=willoBullet,sort=nearest,limit=1,distance=..2] rotated as @p[tag=willoShoot] run tp @s ~ ~1 ~ ~ ~
execute if entity @s[tag=void] run tag @e[type=marker,tag=willoBullet,distance=..2,tag=unset] add void
tag @e[type=marker,tag=willoBullet,distance=..2,tag=unset] remove unset
execute as @e[type=marker,tag=willoBullet,distance=..2,tag=!unset] positioned ~ ~1.25 ~ at @s run function du-in:kit/willo/revolver/marker_raycast

#summon armor_stand ~ ~ ~ {Tags:["trackBullet"],NoGravity:1b,Invulnerable:1b}

execute positioned ^ ^ ^0.5 run particle campfire_cosy_smoke ~ ~1 ~ 0 0 0 0 3 normal
execute positioned ^ ^ ^0.75 run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~1 ~ 0.1 0.1 0.1 0.5 7 normal
execute positioned ^ ^ ^1 run particle dust{color:[1.000,0.541,0.141],scale:1} ~ ~1 ~ 0.1 0.1 0.1 0.5 5 normal

scoreboard players remove @s willoAmmo 1
title @s actionbar [{"color":"red","score":{"name":"@s","objective":"willoAmmo"}},{"color":"red","text":"/6"}]
tag @s remove willoShoot