#execute as @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[scores={kit=17},tag=kitActions,limit=1] team run function du-in:kit/kylo/ability/hit
execute as @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/kylo/ability/hit

xp set @s[tag=!stolen] 360 levels
clear @s minecraft:carrot_on_a_stick

tag @s[tag=stolen] add kitDone