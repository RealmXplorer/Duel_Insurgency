execute unless entity @s[tag=sabotaged] as @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add vaderHit
execute as @a[tag=vaderHit] if score @s team = @a[scores={kit=18},tag=kitActions,sort=nearest,limit=1] team run tag @s remove vaderHit
execute if entity @s[tag=sabotaged] run tag @s add vaderHit
execute as @a[tag=vaderHit] run damage @s 1 arrow by @a[scores={kit=18},tag=kitActions,sort=nearest,limit=1]

execute as @a[tag=vaderHit] run function du-in:kit/vader/ability/effect

execute unless entity @a[tag=vaderHit] run function du-in:kit/all/ability/team
execute if entity @a[tag=vaderHit] run function du-in:kit/vader/ability/cooldown

# playsound minecraft:vader.choke master @a ~ ~ ~ 100 1
# playsound minecraft:vader.hold master @a ~ ~ ~ 100 1.5


# clear @s minecraft:carrot_on_a_stick
# xp set @s[tag=!stolen] 320 levels
# execute if entity @s[tag=stolen] run tag @s add kitDone
# tag @s remove sabotaged