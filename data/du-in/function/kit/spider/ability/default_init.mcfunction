#If player is too far
execute if entity @s[predicate=!du-in:effect/is_on_fire] unless entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far


#If player is in range and valid
execute if entity @s[predicate=!du-in:effect/is_on_fire] run return run function du-in:kit/spider/ability/hit

#Extinguish if no players nearby, is on fire, and isn't sabotaged
execute if entity @s[tag=!sabotaged] run function du-in:kit/spider/ability/extinguish