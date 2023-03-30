
tag @a[distance=0.05..4,gamemode=!spectator,tag=playing,limit=1,sort=nearest,tag=!teamDead] add sansHit

#Leave Kylo force freeze if using ability
tag @s remove kyloHit

#Summon marker behind afflicted player
execute at @a[tag=sansHit] rotated as @a[tag=sansHit] run summon minecraft:marker ^ ^ ^-1 {Tags:["sansTp"]}

#Teleport sans to marker
execute as @e[type=marker,tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,gamemode=!spectator,tag=sansHit,tag=playing,limit=1,sort=nearest] team run function du-in:kit/sans/ability/success

#Message and sound if marker is invalid
execute at @e[type=marker,tag=sansTp] run function du-in:kit/sans/ability/no_tp

#Remove sansHit
tag @a[tag=sansHit] remove sansHit

#Kill TP Marker
kill @e[type=marker,tag=sansTp]