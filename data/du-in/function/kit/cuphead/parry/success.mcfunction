
execute unless score @s team = @p[distance=0.05..3,tag=playing] team run effect give @p[distance=0.05..3,gamemode=!spectator] slowness 1 3 true
execute unless score @s team = @p[distance=0.05..3,tag=playing] team run damage @p[distance=0.05..3,gamemode=!spectator] 1 arrow by @s

playsound minecraft:cuphead.parry master @a ~ ~ ~ 1 1
effect give @s minecraft:levitation 1 10 true
effect give @s minecraft:resistance 2 2 true
effect give @s minecraft:fire_resistance 2 2 true
scoreboard players add @s cardPower 3
scoreboard players set @s floatTimer 5
scoreboard players set @s parryTimer 120