execute unless entity @s[tag=sabotaged] as @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[scores={kit=18},tag=kitActions,sort=nearest,limit=1] team run function du-in:kit/vader/ability/effect
execute if entity @s[tag=sabotaged] run function du-in:kit/vader/ability/effect

playsound minecraft:vader.choke master @a ~ ~ ~ 100 1
playsound minecraft:vader.hold master @a ~ ~ ~ 100 1.5


clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 320 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged