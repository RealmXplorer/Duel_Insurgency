scoreboard players set #teamDead running 1

execute as @a[tag=teamDead,tag=!void] at @s run function du-in:ingame/team_death/dead_effects

execute if entity @a[tag=teamDead,tag=!void] run return run schedule function du-in:ingame/team_death/loop 1t
scoreboard players set #teamDead running 0