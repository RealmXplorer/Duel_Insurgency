execute if entity @s[tag=!sabotaged] run tag @a[distance=0.05..6,sort=nearest,tag=playing,gamemode=!spectator,tag=!teamDead] add kyloMark
execute as @a[tag=kyloMark] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=17}] team run tag @s remove kyloMark


execute as @a[tag=kyloMark] run function du-in:kit/kylo/ability/hit
execute if entity @s[tag=sabotaged] run function du-in:kit/kylo/ability/hit

execute unless entity @a[tag=kyloMark] run function du-in:kit/all/ability/team
execute if entity @a[tag=kyloMark] run function du-in:kit/kylo/ability/cooldown

tag @a remove kyloMark

# xp set @s[tag=!stolen] 360 levels
# clear @s minecraft:carrot_on_a_stick

# #execute if entity @s[tag=empower] run scoreboard players add @a[tag=kyloHit,scores={kyloTimer=30}] kyloTimer 20
# tag @s remove sabotaged
# #tag @s remove empower
# execute if entity @s[tag=stolen] run tag @s add kitDone

###