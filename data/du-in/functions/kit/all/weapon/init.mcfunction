clear @s #du-in:weapon

execute if entity @s[tag=!stolen] run function du-in:kit/all/weapon/give
execute if entity @s[tag=stolen,tag=!teamDead,tag=!gasterInvisible] unless entity @s[scores={floweyHitTimer=0..}] unless entity @s[scores={skeletonMode=1..}] run function du-in:kit/villager/weapon