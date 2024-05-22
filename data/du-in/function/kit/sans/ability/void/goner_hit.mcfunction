
tag @e[type=skeleton,tag=gonerThing,distance=0.05..4,limit=1,sort=nearest] add sansHit

#Leave Kylo force freeze if using ability
#tag @s remove kyloHit

#Summon marker behind afflicted player
execute at @e[type=skeleton,tag=gonerThing,tag=sansHit] rotated as @e[type=skeleton,tag=gonerThing,tag=sansHit] run summon minecraft:marker ^ ^ ^-1 {Tags:["sansTp"]}

#Teleport sans to marker
execute as @e[type=marker,tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..4] run function du-in:kit/sans/ability/void/success

#Message and sound if marker is invalid
execute at @e[type=marker,tag=sansTp] run function du-in:kit/sans/ability/no_tp

#Remove sansHit
tag @e[type=skeleton,tag=gonerThing,tag=sansHit] remove sansHit

#Kill TP Marker
kill @e[type=marker,tag=sansTp]