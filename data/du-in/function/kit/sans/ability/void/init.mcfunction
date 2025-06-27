#Add "Hit" tag to nearest player
execute if entity @e[type=skeleton,tag=gonerThing,distance=0.05..4] run function du-in:kit/sans/ability/void/goner_hit

#Message and sound if no valid player nearby
execute unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..4] run function du-in:kit/all/ability/titles/far

#execute if entity @a[distance=0.05..3,gamemode=!spectator,tag=playing,tag=!teamDead] if score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run function du-in:kit/all/ability/titles/team

#End Ability
tag @s remove kitActions
