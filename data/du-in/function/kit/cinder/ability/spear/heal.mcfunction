
effect give @s minecraft:instant_health 1 1 true
effect give @s minecraft:speed 2 0 true

playsound minecraft:soundeffect.cure master @a ~ ~ ~ 1 1

effect clear @s minecraft:poison
effect clear @s minecraft:wither

#If player is on team
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=34}] team run function du-in:kit/cinder/ability/spear/team


clear @s #du-in:ability
xp set @s[tag=!stolen] 350 levels


particle minecraft:electric_spark ~ ~1.5 ~ 0.6 0.6 0.6 0 150 force
particle minecraft:end_rod ~ ~1.5 ~ 1 1 1 0 100 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:chara.ability master @a ~ ~ ~ 100 1
#playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100 0.5
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7


execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove kitActions
