execute if entity @s[tag=!empower] run tag @a[distance=0.05..5,tag=playing] add wildeHit
execute if entity @s[tag=empower] run tag @a[distance=0.05..7,tag=playing] add wildeHit

#Normal
execute if entity @s[tag=!sabotaged,tag=!empower] as @a[tag=wildeHit] unless score @s team = @p[scores={kit=23},tag=kitActions,distance=..5] team run function du-in:kit/nick/ability/enemy_hit
execute if entity @s[tag=!sabotaged,tag=!empower] as @a[tag=wildeHit] if score @s team = @p[scores={kit=23},tag=kitActions,distance=..5] team run function du-in:kit/nick/ability/team_hit

#Empowered
execute if entity @s[tag=!sabotaged,tag=empower] as @a[tag=wildeHit] unless score @s team = @p[scores={kit=23},tag=kitActions,distance=..7] team run function du-in:kit/nick/ability/enemy_hit
execute if entity @s[tag=!sabotaged,tag=empower] as @a[tag=wildeHit] if score @s team = @p[scores={kit=23},tag=kitActions,distance=..7] team run function du-in:kit/nick/ability/team_hit

#Sabotaged (Swaps)
execute if entity @s[tag=sabotaged,tag=!empower] as @a[tag=wildeHit] if score @s team = @p[scores={kit=23},tag=kitActions,distance=..5] team run function du-in:kit/nick/ability/enemy_hit
execute if entity @s[tag=sabotaged,tag=!empower] as @a[tag=wildeHit] unless score @s team = @p[scores={kit=23},tag=kitActions,distance=..5] team run function du-in:kit/nick/ability/team_hit

#Sabotaged Empowered
execute if entity @s[tag=sabotaged,tag=empower] as @a[tag=wildeHit] if score @s team = @p[scores={kit=23},tag=kitActions,distance=..7] team run function du-in:kit/nick/ability/enemy_hit
execute if entity @s[tag=sabotaged,tag=empower] as @a[tag=wildeHit] unless score @s team = @p[scores={kit=23},tag=kitActions,distance=..7] team run function du-in:kit/nick/ability/team_hit

playsound minecraft:nick.hustle master @a ~ ~ ~ 100 1
playsound du-in:sfx.ut.ability master @a ~ ~ ~ 100 0.95

effect give @s[tag=!sabotaged] minecraft:speed 2 2 true
effect clear @s[tag=!sabotaged] minecraft:levitation

clear @s #du-in:ability
tag @s remove sabotaged
tag @s remove empower
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone