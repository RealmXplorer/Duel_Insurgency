execute as @a[distance=0.05..,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[tag=kitActions,scores={kit=42069},limit=1] team run function du-in:kit/golem/ability/throw
particle minecraft:block dirt ~ ~ ~ 3 0 3 0 500 force
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 1
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 .5
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 2

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s 500 levels

#Switch villager back to their ability
tag @s[tag=stolen] add kitDone
#End ability
tag @s remove kitActions