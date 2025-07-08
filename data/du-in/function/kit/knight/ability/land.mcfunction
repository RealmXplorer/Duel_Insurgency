#If Knight is close to enemy#
execute if entity @s[tag=!void,tag=!sabotaged] as @a[gamemode=!spectator,distance=0.05..6,tag=!teamDead] run tag @s add diveHit
execute if entity @s[tag=!sabotaged] as @a[tag=diveHit] if score @s team = @p[scores={kit=37},tag=kitActions] team run tag @s remove diveHit

#If sabotaged
execute if entity @s[tag=sabotaged] as @a[gamemode=!spectator,distance=..6,tag=!teamDead] run tag @s add diveHit
execute if entity @s[tag=sabotaged] as @a[tag=diveHit] unless score @s team = @p[scores={kit=37},tag=kitActions] team run tag @s remove diveHit

#If in Void
execute if entity @s[tag=void] as @e[type=skeleton,tag=gonerThing,distance=0.05..6] run function du-in:kit/knight/ability/damage

#Particles and Sounds
particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10 normal
#Testing sound
playsound minecraft:ralsei.spell master @a ~ ~ ~ 1 1

#Damage enemies
execute as @a[tag=diveHit] at @s run function du-in:kit/knight/ability/damage

#End ability for user
execute as @p[tag=diving] run function du-in:kit/knight/ability/end

#Kill armor stand
kill @s

