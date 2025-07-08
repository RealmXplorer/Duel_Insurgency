tag @a[distance=0.05..5,tag=playing] add wildeHit
execute as @a[tag=wildeHit] unless score @s team = @p[scores={kit=23},tag=kitActions] team run function du-in:kit/nick/ability/enemy_hit
execute as @a[tag=wildeHit] if score @s team = @p[scores={kit=23},tag=kitActions] team run function du-in:kit/nick/ability/team_hit

playsound minecraft:nick.hustle master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ 100 0.95

effect give @s minecraft:speed 2 2 true
effect clear @s minecraft:levitation

clear @s #du-in:ability
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone