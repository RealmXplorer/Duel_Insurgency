#Work to do:
execute if score #main redOnline >= #main blueOnline as @r[tag=!team1,tag=!team2,sort=nearest] run function du-in:lobby/team_select/actions/pick_blue
execute if score #main redOnline <= #main blueOnline as @r[tag=!team1,tag=!team2,sort=nearest] run function du-in:lobby/team_select/actions/pick_red

execute if score #main teamOnline = @s online run tag @s remove sort