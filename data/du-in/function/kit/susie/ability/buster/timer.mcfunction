scoreboard players remove @s susieTimer 1
particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0 1
execute if entity @s[tag=rudeBuster] as @a[gamemode=adventure,distance=..0.75] unless score @s team = @n[type=armor_stand,tag=rudeBuster] team unless score @s player = @n[type=armor_stand,tag=rudeBuster] player run damage @s 20 arrow by @n[type=armor_stand,tag=rudeBuster]
execute if entity @s[tag=rudeBuster] as @a[gamemode=adventure,distance=0.76..1.5] unless score @s team = @n[type=armor_stand,tag=rudeBuster] team unless score @s player = @n[type=armor_stand,tag=rudeBuster] player run damage @s 16 arrow by @n[type=armor_stand,tag=rudeBuster]

execute if entity @s[tag=redBuster] as @a[gamemode=adventure,distance=..0.75] unless score @s team = @n[type=armor_stand,tag=redBuster] team unless score @s player = @n[type=armor_stand,tag=redBuster] player run damage @s 30 arrow by @n[type=armor_stand,tag=redBuster]
execute if entity @s[tag=redBuster] as @a[gamemode=adventure,distance=0.76..1.5] unless score @s team = @n[type=armor_stand,tag=redBuster] team unless score @s player = @n[type=armor_stand,tag=redBuster] player run damage @s 26 arrow by @n[type=armor_stand,tag=redBuster]

execute if entity @s[scores={susieTimer=..0}] run function du-in:kit/susie/ability/buster/kill