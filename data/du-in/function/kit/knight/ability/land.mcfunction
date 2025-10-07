#If Knight is close to enemy#
execute if entity @s[tag=!void,tag=!sabotaged] as @a[gamemode=!spectator,distance=0.05..5,tag=!teamDead] run tag @s add diveHit
execute if entity @s[tag=!sabotaged] as @a[tag=diveHit] if score @s team = @p[scores={kit=37},tag=diving,distance=..5] team run tag @s remove diveHit
execute if entity @s[tag=!sabotaged] as @a[tag=diveHit] if score @s player = @p[scores={kit=37},tag=diving,distance=..5] player run tag @s remove diveHit

#If sabotaged
execute if entity @s[tag=sabotaged] as @a[gamemode=!spectator,distance=..5,tag=!teamDead] run tag @s add diveHit
execute if entity @s[tag=sabotaged] as @a[tag=diveHit] unless score @s team = @p[scores={kit=37},tag=diving,distance=..5] team run tag @s remove diveHit

#If in Void
execute if entity @s[tag=void] as @e[type=skeleton,tag=gonerThing,distance=0.05..6] run function du-in:kit/knight/ability/damage

#Particles and Sounds
particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:flash{color:0xffffff} ~ ~1 ~ 0 0 0 0 10 normal
particle minecraft:gust_emitter_small ~ ~1 ~ 1 0 1 2 15 force
#Testing sound
playsound minecraft:entity.allay.death master @a ~ ~ ~ 0.75 0.65
playsound minecraft:entity.creaking.death master @a ~ ~ ~ 1 2
playsound entity.generic.explode master @a ~ ~ ~ 1 1.25

#Damage enemies
execute as @a[tag=diveHit] at @s run function du-in:kit/knight/ability/damage

#End ability for user
execute as @p[tag=diving] run function du-in:kit/knight/ability/end

#Kill armor stand
kill @s

