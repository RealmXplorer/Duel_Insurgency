execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/deathmatch/default/default
execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/deathmatch/team/teams
execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/deathmatch/timed/timed
execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/deathmatch/team_timed/timed

#MUSIC#
#execute as @a[tag=dmIngame,tag=!musicOff,tag=!startgame,tag=!saac,tag=!bigChungus] at @s run function du-in:music/ingame/deathmatch

function du-in:maps/classic