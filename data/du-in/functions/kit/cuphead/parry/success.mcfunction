kill @e[tag=projectile,sort=nearest,limit=1]
kill @e[type=armor_stand,tag=asgoreFire,distance=..3.5]
# kill @e[type=block_display,tag=asgoreFire,distance=..3.5]
execute unless score @s team = @a[distance=0.05..3,tag=playing,sort=nearest,limit=1] team run effect give @a[distance=0.05..3,sort=nearest,limit=1,gamemode=!spectator] slowness 1 100 true
execute unless score @s team = @a[distance=0.05..3,tag=playing,sort=nearest,limit=1] team run damage @a[distance=0.05..3,sort=nearest,limit=1,gamemode=!spectator] 1 arrow by @s
playsound minecraft:cuphead.parry master @a ~ ~ ~ 1 1
effect give @s minecraft:levitation 1 10 true
effect give @s minecraft:resistance 2 2 true
effect give @s minecraft:fire_resistance 2 2 true
#clear @s warped_fungus_on_a_stick
scoreboard players add @s cardPower 3
scoreboard players set @s floatTimer 5
scoreboard players set @s parryTimer 95