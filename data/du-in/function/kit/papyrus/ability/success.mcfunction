tag @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead,tag=!sabotaged] add papyrusHit
execute as @a[tag=papyrusHit] if score @s team = @a[scores={kit=13},tag=kitActions,sort=nearest,limit=1] team run tag @s remove papyrusHit
tag @s[tag=sabotaged] add papyrusHit

execute unless entity @a[tag=!papyrusHit] run function du-in:kit/all/ability/team
execute if entity @a[tag=papyrusHit] run function du-in:kit/papyrus/ability/cooldown
