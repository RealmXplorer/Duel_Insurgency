## CURRENTLY UNUSED
#say success
#execute if entity @s[tag=!startgame,tag=!pussFear,tag=!kratosRage,tag=!kitMenu,tag=!teamDead] run function du-in:kit/all/weapon/start

#execute if entity @s[tag=!startgame,tag=!pussFear,tag=!kitMenu,tag=!teamDead] store result score @s weapCount run clear @s #du-in:weapon 0


#execute if entity @s[tag=!startgame,tag=!pussFear,tag=!kratosRage,tag=!kitMenu,tag=!teamDead] unless score @s weapCount matches 1 run function du-in:kit/all/weapon/start

execute if entity @s[tag=!pussFear,tag=!kratosRage,tag=!kitMenu,tag=!teamDead] run function du-in:kit/all/weapon/start

advancement revoke @s[tag=!lobby] only du-in:utility/weap_count

# clear @s #du-in:weapon

# execute if entity @s[tag=!stolen] run function du-in:kit/all/weapon/give
# execute if entity @s[tag=stolen,tag=!teamDead,tag=!gasterInvisible] unless entity @s[scores={floweyHitTimer=0..}] unless entity @s[scores={skeletonMode=1..}] run function du-in:kit/villager/weapon