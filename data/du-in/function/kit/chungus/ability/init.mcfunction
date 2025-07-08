execute unless entity @s[tag=sabotaged] as @a[distance=0.05..,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[tag=kitActions,scores={kit=42069},limit=1] team run function du-in:kit/chungus/ability/throw
execute if entity @s[tag=sabotaged] run function du-in:kit/chungus/ability/throw
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

# particle minecraft:block dirt ~ ~ ~ 3 0 3 0 500 force
particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 3 0 3 0 500 force

playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 1
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 .5
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 2
playsound minecraft:sans.ability master @a ~ ~ ~ .25 .95

#Remove ability from hand
clear @s #du-in:ability
#Start cooldown
xp set @s[tag=!stolen] 500 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
#End ability
tag @s remove kitActions