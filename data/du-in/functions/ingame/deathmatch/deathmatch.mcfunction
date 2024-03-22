execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/deathmatch/default/default
execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/deathmatch/team/teams
execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/deathmatch/timed/timed
execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/deathmatch/team_timed/timed

function du-in:maps/classic