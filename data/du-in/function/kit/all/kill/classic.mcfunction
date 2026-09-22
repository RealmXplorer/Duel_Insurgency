execute if score #Classic gamemode matches 0 run return run function du-in:ingame/classic/default/default
execute if score #Classic gamemode matches 1 run return run function du-in:ingame/classic/team/teams
execute if score #Classic gamemode matches 2 run return run execute if score @s killIngame > #main scoreMost store result score #main scoreMost run scoreboard players get @s killIngame
execute if score #Classic gamemode matches 3 run function du-in:ingame/classic/team_timed/timed_kill

