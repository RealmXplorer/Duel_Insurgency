#Test for team score if there is a player in radius
execute if entity @a[distance=0.05..5,tag=playing,tag=!teamDead,gamemode=!spectator,sort=nearest] run function du-in:kit/papyrus/ability/success

#If enemy is too far
execute unless entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far


tag @s remove kitActions