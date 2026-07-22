execute if entity @s[tag=!sabotaged,tag=!empower] run function du-in:kit/frisk/ability/normal
execute if entity @s[tag=!sabotaged,tag=empower] run function du-in:kit/frisk/ability/empowered
execute if entity @s[tag=sabotaged] run function du-in:kit/frisk/ability/sabotaged

execute if entity @s[tag=!sabotaged,tag=empower] as @a[distance=.05..7,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/frisk/ability/hit

effect give @s minecraft:weakness 2 255 true

#Sabotaged effects
execute if entity @s[tag=sabotaged] run function du-in:kit/frisk/ability/sabotaged

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels

particle minecraft:heart ~ ~1.5 ~ 0.6 0.6 0.6 0 150 force
playsound du-in:sfx.ut.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100 0.5
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7


scoreboard players set @a[distance=..5,tag=playing,gamemode=!spectator,tag=!teamDead] charaTimer 0
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove empower
tag @s remove kitActions
