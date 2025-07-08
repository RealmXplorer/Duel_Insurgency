execute if entity @s[tag=!sabotaged] as @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/frisk/ability/hit
effect give @s minecraft:weakness 2 255 true
effect give @s[tag=sabotaged] minecraft:slowness 2 255 true
effect give @s[tag=!sabotaged] minecraft:fire_resistance 2 255 true
effect give @s[tag=!sabotaged] minecraft:instant_health 1 0 true
effect give @s[tag=!sabotaged] minecraft:speed 3 1 true

execute if entity @s[tag=!sabotaged] run playsound minecraft:soundeffect.cure master @a ~ ~ ~ 1 1
effect clear @s[tag=!sabotaged] minecraft:poison
effect clear @s[tag=!sabotaged] minecraft:wither

#If player is on team
execute if entity @s[tag=!sabotaged] as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=15}] team run function du-in:kit/frisk/ability/team

execute if entity @s[tag=sabotaged] as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,tag=!sabotaged] run function du-in:kit/frisk/ability/team

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels

#execute if entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = @p[distance=0.05..5,tag=playing] team run tellraw @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] ["",{text:"You have been weakened by compassion!",bold:true,color:red}]

particle minecraft:heart ~ ~1.5 ~ 0.6 0.6 0.6 0 150 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100 0.5
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7


scoreboard players set @a[distance=..5,tag=playing,gamemode=!spectator,tag=!teamDead] charaTimer 0
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove kitActions
