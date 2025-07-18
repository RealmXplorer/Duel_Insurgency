execute if entity @s[tag=!sabotaged] run effect give @e[type=skeleton,distance=.05..5] minecraft:weakness 3 255 true
effect give @s minecraft:weakness 2 255 true
effect give @s[tag=sabotaged] minecraft:slowness 2 255 true
effect give @s[tag=!sabotaged] minecraft:fire_resistance 2 255 true
effect give @s[tag=!sabotaged] minecraft:resistance 2 255 true
effect give @s[tag=!sabotaged] minecraft:instant_health 1 0 true
effect give @s[tag=!sabotaged] minecraft:speed 3 1 true

#If player is on team
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,tag=!sabotaged] run function du-in:kit/frisk/ability/team


clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels

particle minecraft:heart ~ ~1.5 ~ 0.6 0.6 0.6 0 150 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100 0.5
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7


execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove kitActions
