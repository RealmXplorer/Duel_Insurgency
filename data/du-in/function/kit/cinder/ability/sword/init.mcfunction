#If Golem is close to enemy#
execute if entity @s[tag=!sabotaged] as @a[distance=0.05..5,gamemode=!spectator,tag=!teamDead] run tag @s add cinderHit
execute as @a[tag=cinderHit] if score @s team = @p[scores={kit=34},tag=kitActions] team run tag @s remove cinderHit
tag @s[tag=sabotaged] add cinderHit

execute if entity @s[tag=!sabotaged] if entity @a[gamemode=adventure,distance=0.05..5,tag=!teamDead] unless entity @a[tag=cinderHit] run function du-in:kit/all/ability/team

particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:small_flame ~ ~1 ~ 1 1 1 0.05 50 force
particle minecraft:flame ~ ~1 ~ 0 0 0 0.4 100 force
playsound minecraft:sans.ability master @a ~ ~ ~ .5 1


execute as @a[tag=cinderHit] run function du-in:kit/cinder/ability/sword/explode

execute if entity @s[tag=sabotaged] run function du-in:kit/cinder/ability/sword/explode

execute if entity @a[tag=cinderHit] run function du-in:kit/cinder/ability/sword/cooldown


#Finish Ability#
tag @s remove kitActions