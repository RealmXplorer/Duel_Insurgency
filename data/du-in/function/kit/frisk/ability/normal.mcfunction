execute store result score #main team run scoreboard players get @s team
execute as @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run function du-in:kit/frisk/ability/hit
execute as @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = #main team run function du-in:kit/frisk/ability/team
scoreboard players reset #main team

effect give @s minecraft:fire_resistance 2 255 true
effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:speed 3 1 true

execute if entity @s run playsound du-in:sfx.ut.cure master @a ~ ~ ~ 1 1
effect clear @s minecraft:poison
effect clear @s minecraft:wither

