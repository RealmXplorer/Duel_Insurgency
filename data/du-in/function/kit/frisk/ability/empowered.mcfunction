execute store result score #main team run scoreboard players get @s team
execute as @a[distance=.05..7,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run function du-in:kit/frisk/ability/hit
execute as @a[distance=.05..7,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = #main team run function du-in:kit/frisk/ability/team_empower
scoreboard players reset #main team

#Empowered effects
effect give @s minecraft:fire_resistance 3 255 true
effect give @s minecraft:instant_health 1 2 true
effect give @s minecraft:speed 4 2 true

playsound du-in:sfx.ut.cure master @a ~ ~ ~ 1 1
effect clear @s minecraft:poison
effect clear @s minecraft:wither

#If player is on team