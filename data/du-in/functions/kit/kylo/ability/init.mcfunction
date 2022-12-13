#If player is close
execute unless score @a[distance=0.05..5,limit=1,sort=nearest,tag=playing,gamemode=!spectator,tag=!teamDead] team = @s team run function du-in:kit/kylo/ability/success

#If player is too far
execute unless entity @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#If player is same team
execute unless entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = @a[scores={kit=17},tag=kitActions,limit=1] team run function du-in:kit/all/ability/team

#execute as @a[tag=kitActions,scores={kit=16}] run tag @s remove kyloHit

#End Ability
tag @s remove kitActions