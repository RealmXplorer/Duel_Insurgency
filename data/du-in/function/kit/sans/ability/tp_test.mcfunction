#Summon marker behind afflicted player
execute at @a[tag=sansHit,limit=1] rotated as @a[tag=sansHit,sort=nearest] run summon minecraft:marker ^ ^ ^-1 {Tags:["sansTp"]}

#Teleport sans to marker
execute at @e[type=marker,tag=sansTp] if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] run function du-in:kit/sans/ability/success

#Message and sound if marker is invalid
execute at @e[type=marker,tag=sansTp] run function du-in:kit/sans/ability/teleport/test

#Remove sansHit
tag @a[tag=sansHit] remove sansHit

#Kill TP Marker
kill @e[type=marker,tag=sansTp]