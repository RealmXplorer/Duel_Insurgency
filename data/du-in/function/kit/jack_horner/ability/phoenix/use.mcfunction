execute unless entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/jack_horner/ability/phoenix/raycast
execute if entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/jack_horner/ability/phoenix/void/raycast

playsound du-in:sfx.ut.ability master @a ~ ~ ~ .25 1

##New
# tag @s add hornerShoot

# summon marker ^ ^1 ^1 {Tags:["hornerBlast","unset","mapSpecific","projectile"]}
# scoreboard players set @e[type=marker,distance=..2,tag=hornerBlast,tag=unset] willoBulletTravel 120
# execute as @e[type=marker,tag=hornerBlast,sort=nearest,limit=1,distance=..2] rotated as @p[tag=hornerBlast] run tp @s ~ ~1.2 ~ ~ ~

# execute if entity @s[tag=void] run tag @e[type=marker,tag=hornerBlast,distance=..2,tag=unset] add void
# tag @e[type=marker,tag=hornerBlast,distance=..2,tag=unset] remove unset
# execute as @e[type=marker,tag=hornerBlast,distance=..2,tag=!unset] at @s run function du-in:kit/jack_horner/ability/phoenix/raycast

# tag @s remove hornerShoot

#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
xp set @s[tag=!stolen] 320 levels

#End ability
function du-in:kit/jack_horner/ability/end