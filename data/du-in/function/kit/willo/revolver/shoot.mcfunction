tag @s add willoShoot
function du-in:kit/willo/revolver/item
playsound du-in:kit.willo.revolver_shoot master @a ~ ~ ~ 1 1

summon marker ^ ^1.9 ^.5 {Tags:["willoBullet","unset","mapSpecific","projectile"]}
scoreboard players set @e[distance=..2,tag=willoBullet,tag=unset,type=marker] willoBulletTravel 120
execute as @e[distance=..2,tag=willoBullet,tag=unset,type=marker] rotated as @p[tag=willoShoot] run tp @s ~ ~1.2 ~ ~ ~

execute if entity @s[tag=void] run tag @e[distance=..2,tag=willoBullet,tag=unset,type=marker] add void
tag @e[distance=..2,tag=willoBullet,tag=unset,type=marker] remove unset
execute as @e[distance=..2,tag=willoBullet,tag=!unset,type=marker] at @s run function du-in:kit/willo/revolver/marker_raycast


execute positioned ^-.5 ^.1 ^1 run particle campfire_cosy_smoke ~ ~1 ~ 0 0 0 0 3 normal
execute positioned ^-.5 ^ ^1.25 run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~1 ~ 0.1 0.1 0.1 0.5 7 normal
execute positioned ^-.5 ^ ^1.5 run particle dust{color:[1.000,0.541,0.141],scale:1} ~ ~1 ~ 0.1 0.1 0.1 0.5 5 normal

scoreboard players remove @s willoAmmo 1
#title @s actionbar [{"color":"red","score":{"name":"@s","objective":"willoAmmo"}},{"color":"red","text":"/6"}]
tag @s remove willoShoot


tp @s ~ ~ ~ ~ ~-15
scoreboard players set @s willoRecoilTimer 5
