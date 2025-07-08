execute if entity @s[tag=!sabotaged] run tag @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] add papyrusHit
execute if entity @s[tag=!sabotaged] as @a[tag=papyrusHit] if score @s team = @a[scores={kit=13},tag=kitActions,sort=nearest,limit=1] team run tag @s remove papyrusHit

execute if entity @s[tag=sabotaged] run tag @a[distance=..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] add papyrusHit
execute if entity @s[tag=sabotaged] as @a[tag=papyrusHit] unless score @s team = @a[scores={kit=13},tag=kitActions,sort=nearest,limit=1] team run tag @s remove papyrusHit
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects


execute if entity @s[tag=!sabotaged] unless entity @a[tag=!papyrusHit] run function du-in:kit/all/ability/titles/team
execute if entity @a[tag=papyrusHit] run function du-in:kit/papyrus/ability/cooldown
