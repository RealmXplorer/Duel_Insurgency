#If player is in range and valid
execute if entity @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/spider/ability/hit

#If player is too far
execute if entity @s[predicate=!du-in:effect/is_on_fire] unless entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run function du-in:kit/all/ability/titles/far

#Extinguish
execute if entity @s[predicate=du-in:effect/is_on_fire,tag=!sabotaged] unless entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run function du-in:kit/spider/ability/extinguish
execute if score @s[predicate=du-in:effect/is_on_fire,tag=!sabotaged] team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/spider/ability/extinguish

#End ability
tag @s remove kitActions