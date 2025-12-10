# execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/deathmatch/default/default
# execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/deathmatch/team/teams
# execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/deathmatch/timed/timed
# execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/deathmatch/team_timed/timed

#Pick Deathmatch mode
execute if score #DM gamemode matches 0 run function du-in:ingame/deathmatch/default/default
execute if score #DM gamemode matches 1 run function du-in:ingame/deathmatch/team/teams
execute if score #DM gamemode matches 2 run function du-in:ingame/deathmatch/timed/timed
execute if score #DM gamemode matches 3 run function du-in:ingame/deathmatch/team_timed/timed

function du-in:maps/classic