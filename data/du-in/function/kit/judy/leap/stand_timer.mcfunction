scoreboard players remove @s judyTimer 1
#particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0 1
#execute as @a[gamemode=adventure,distance=..0.75] unless score @s team = @n[type=salmon,tag=kratosRock] team unless score @s player = @n[type=salmon,tag=kratosRock] player run damage @s 20 arrow by @n[type=salmon,tag=kratosRock]
#execute as @a[gamemode=adventure,distance=0.76..1.5] unless score @s team = @n[type=salmon,tag=kratosRock] team unless score @s player = @n[type=salmon,tag=kratosRock] player run damage @s 16 arrow by @n[type=salmon,tag=kratosRock]

#tp @e[type=minecraft:block_display,tag=kratosRock] @n[type=salmon,tag=kratosRock]

execute if entity @s[scores={judyTimer=..0}] run function du-in:kit/judy/ability/kill_stand