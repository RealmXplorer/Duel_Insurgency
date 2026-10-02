execute store result score #main team run scoreboard players get @s team

execute if entity @s[tag=!sabotaged] as @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run tag @s add papyrusHit
execute if entity @s[tag=sabotaged] run tag @s add papyrusHit

scoreboard players reset #main team

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute if entity @s[tag=!sabotaged] unless entity @a[tag=!papyrusHit] run function du-in:kit/all/ability/titles/team
execute if entity @a[tag=papyrusHit] run function du-in:kit/papyrus/ability/cooldown
tag @s remove kitActions