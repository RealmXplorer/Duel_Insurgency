#scoreboard players set @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,limit=1] ralseiTimer 70
execute if entity @s[tag=!sabotaged] as @a[distance=.05..10,sort=nearest,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[scores={kit=24},sort=nearest,tag=kitActions,limit=1] team at @s run function du-in:kit/ralsei/ability/enemy
execute if entity @s[tag=sabotaged] run function du-in:kit/ralsei/ability/enemy

execute as @a[distance=.05..10,tag=playing,gamemode=!spectator,tag=!teamDead,limit=1] if score @s team = @a[scores={kit=24},tag=kitActions,limit=1] team at @s run function du-in:kit/ralsei/ability/teammate

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a
playsound minecraft:ralsei.sing master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ 1 1.05
particle minecraft:crit ~ ~2.25 ~ 3 3 3 0.25 100 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone