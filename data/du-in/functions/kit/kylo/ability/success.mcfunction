#execute as @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[scores={kit=17},tag=kitActions,limit=1] team run function du-in:kit/kylo/ability/hit
execute if entity @s[tag=!sabotaged] as @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/kylo/ability/hit
execute if entity @s[tag=sabotaged] run function du-in:kit/kylo/ability/hit

xp set @s[tag=!stolen] 360 levels
clear @s minecraft:carrot_on_a_stick

#execute if entity @s[tag=empower] run scoreboard players add @a[tag=kyloHit,scores={kyloTimer=30}] kyloTimer 20
tag @s remove sabotaged
#tag @s remove empower
execute if entity @s[tag=stolen] run tag @s add kitDone