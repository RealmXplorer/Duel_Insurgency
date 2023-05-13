tag @a[distance=0.05..3.5,tag=playing] add wildeHit
execute as @a[tag=wildeHit] unless score @s team = @a[scores={kit=23},tag=kitActions,sort=nearest,limit=1] team run function du-in:kit/nick/ability/enemy_hit
execute as @a[tag=wildeHit] if score @s team = @a[scores={kit=23},tag=kitActions,sort=nearest,limit=1] team run function du-in:kit/nick/ability/team_hit

##COPYRIGHT
playsound minecraft:nick.hustle master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ 100 0.95

effect give @s minecraft:speed 2 2 true

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone