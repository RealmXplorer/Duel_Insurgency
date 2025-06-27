scoreboard players remove @s susieTimer 1
particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0 1

#Rude Buster
execute if entity @s[tag=rudeBuster] as @a[gamemode=adventure,distance=..1.5] unless score @s team = @n[type=armor_stand,tag=rudeBuster] team unless score @s player = @n[type=armor_stand,tag=rudeBuster] player run function du-in:kit/susie/ability/buster/rude_hit

#Red Buster
execute if entity @s[tag=redBuster] as @a[gamemode=adventure,distance=..1.5] unless score @s team = @n[type=armor_stand,tag=redBuster] team unless score @s player = @n[type=armor_stand,tag=redBuster] player run function du-in:kit/susie/ability/buster/red_hit

execute if entity @s[scores={susieTimer=..0}] run function du-in:kit/susie/ability/buster/kill