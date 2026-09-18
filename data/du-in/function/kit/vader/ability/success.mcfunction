execute unless entity @s[tag=sabotaged] as @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add vaderHit
execute as @a[tag=vaderHit] if score @s team = @a[scores={kit=18},tag=kitActions,sort=nearest,limit=1] team run tag @s remove vaderHit
execute if entity @s[tag=sabotaged] run tag @s add vaderHit

#Break function if no valid players
execute unless entity @a[tag=vaderHit] run return run function du-in:kit/all/ability/titles/team


##SUCCESS
#Sabotaged
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#Empowered hit
execute if entity @s[tag=empower] as @a[tag=vaderHit] run tag @s add empoweredVaderHit

#Affect players
execute as @a[tag=vaderHit] run function du-in:kit/vader/ability/hit

#Sounds
playsound du-in:kit.vader.choke master @a ~ ~ ~ 100 1
playsound du-in:kit.vader.hold master @a ~ ~ ~ 100 1.5
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .5 .95

#Animation
swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

#End
clear @s #du-in:ability
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove empower
tag @s remove kitActions