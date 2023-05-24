#execute unless entity @s[tag=sabotaged] run tag @a[distance=0.05..4,gamemode=!spectator,tag=playing,limit=1,sort=nearest,tag=!teamDead] add sansHit

execute unless entity @s[tag=sabotaged] as @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[tag=kitActions,scores={kit=16},limit=1,sort=nearest] team run tag @s add sansHit

scoreboard players set @s[tag=sabotaged] ralseiTimer 70
#Leave Kylo force freeze if using ability
tag @s[tag=!sabotaged] remove kyloHit

#Summon marker behind afflicted player
execute at @a[tag=sansHit,limit=1] rotated as @a[tag=sansHit,sort=nearest] run summon minecraft:marker ^ ^ ^-1 {Tags:["sansTp"]}

#Teleport sans to marker
execute as @e[type=marker,tag=sansTp] at @s if block ~ ~ ~ #du-in:sans_valid if block ~ ~1 ~ #du-in:sans_valid as @a[tag=kitActions,scores={kit=16}] if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,gamemode=!spectator,tag=sansHit,tag=playing,limit=1,sort=nearest] team run function du-in:kit/sans/ability/success

#Message and sound if marker is invalid
execute at @e[type=marker,tag=sansTp] run function du-in:kit/sans/ability/no_tp

#Remove sansHit
tag @a[tag=sansHit] remove sansHit

#Kill TP Marker
kill @e[type=marker,tag=sansTp]