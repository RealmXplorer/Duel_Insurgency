execute if entity @s[tag=!sabotaged] run tag @a[distance=0.05..6,tag=playing,gamemode=!spectator,tag=!teamDead] add kyloMark
execute if entity @s[tag=!sabotaged] as @a[tag=kyloMark] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=17}] team run tag @s remove kyloMark
tag @s[tag=sabotaged] add kyloMark

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute as @a[tag=kyloMark] run function du-in:kit/kylo/ability/hit

execute unless entity @a[tag=kyloMark] run function du-in:kit/all/ability/team
execute if entity @a[tag=kyloMark] run function du-in:kit/kylo/ability/cooldown

tag @a remove kyloMark