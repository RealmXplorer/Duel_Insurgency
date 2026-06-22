
effect give @s minecraft:slowness 2 255 true
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,tag=!sabotaged] run function du-in:kit/frisk/ability/team
function du-in:kit/all/ability/sabotage/effects
