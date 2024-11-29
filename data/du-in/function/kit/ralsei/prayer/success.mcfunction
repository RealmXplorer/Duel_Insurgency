#Heal Self#
effect give @s minecraft:instant_health 1 3 true

#Heal Team#
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = @a[scores={kit=24},tag=maxTP,tag=secKitActions,limit=1] team run effect give @s minecraft:instant_health 1 2 true

#Damage Enemy Undead#
execute if entity @s[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,tag=undead] unless score @s team = @a[scores={kit=24},tag=maxTP,tag=secKitActions,limit=1] team run function du-in:kit/ralsei/prayer/undead

#Particle#
particle minecraft:heart ~ ~1.5 ~ 2 2 2 0 25 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:chara.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7
particle minecraft:composter ~ ~1.5 ~ 2 1 2 0 30 force

#Reset#
scoreboard players set @s ralseiTP 0
tag @s remove maxTP

clear @s minecraft:gunpowder[item_model="du-in:other/tp4"]