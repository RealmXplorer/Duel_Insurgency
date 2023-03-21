execute if entity @s[tag=!sabotaged] run effect give @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] minecraft:weakness 3 255 true
effect give @s minecraft:weakness 2 255 true
effect give @s minecraft:fire_resistance 2 255 true
effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:speed 3 1 true

#If player is on team
execute if entity @s[tag=!sabotaged] as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=15}] team run function du-in:kit/frisk/ability/team

execute if entity @s[tag=sabotaged] as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,tag=!sabotaged] run function du-in:kit/frisk/ability/team


clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 360 levels

execute if entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[distance=0.05..5,tag=playing,limit=1,sort=nearest] team run tellraw @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] ["",{"text":"You have been weakened by compassion!","bold":true,"color":"red"}]

particle minecraft:heart ~ ~1.5 ~ 0.6 0.6 0.6 0 150 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100 0.5
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7


scoreboard players set @a[distance=..5,tag=playing,gamemode=!spectator,tag=!teamDead] charaTimer 0
scoreboard players set @a[distance=..5,tag=playing,gamemode=!spectator,tag=!teamDead] charaTimer2 0
tag @s[tag=stolen] add kitDone
tag @s remove sabotaged
tag @s remove kitActions
