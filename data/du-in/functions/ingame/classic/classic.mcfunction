#NORMAL CLASSIC STUFF#
execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/default/default

#TEAM CLASSIC STUFF#
execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/team/teams

#TIMED CLASSIC STUFF
execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/classic/timed/timed

execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/classic/team_timed/timed

#MUSIC#
#execute as @a[tag=cIngame,tag=!musicOff,tag=!startgame,tag=!saac,tag=!bigChungus,tag=!saul] at @s run function du-in:music/ingame/classic

function du-in:maps/classic