#scoreboard players set @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,limit=1] ralseiTimer 70
effect give @e[type=skeleton,distance=.05..4] slowness infinite 2 true
execute as @a[distance=.05..4,tag=playing,gamemode=!spectator,tag=!teamDead,limit=1] if score @s team = @a[scores={kit=24},tag=kitActions,limit=1] team at @s run function du-in:kit/ralsei/ability/teammate

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a
playsound minecraft:ralsei.sing master @a ~ ~ ~ 100 1
particle minecraft:crit ~ ~2.25 ~ 3 3 3 0.25 100 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone