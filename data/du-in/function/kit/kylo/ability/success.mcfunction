execute if entity @s[tag=!sabotaged] run tag @a[distance=0.05..6,tag=playing,gamemode=!spectator,tag=!teamDead] add kyloMark
execute if entity @s[tag=!sabotaged] as @a[tag=kyloMark] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=17}] team run tag @s remove kyloMark
tag @s[tag=sabotaged] add kyloMark

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute unless entity @a[tag=kyloMark] run return run function du-in:kit/all/ability/titles/team

execute if entity @s[tag=empower] run tag @a[tag=kyloMark] add kyloEmpowerHit

#Affect marked players
execute as @a[tag=kyloMark] at @s run function du-in:kit/kylo/ability/hit

playsound du-in:sfx.ut.ability master @a ~ ~ ~ .15 1

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

xp set @s[tag=!stolen] 360 levels
clear @s #du-in:ability
tag @s remove sabotaged
tag @s remove empower
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions

#execute if entity @a[tag=kyloMark] run function du-in:kit/kylo/ability/cooldown

#tag @a remove kyloMark