#RED TEAM DEATHMATCH END OF ROUND#
execute if score #main redTeamCount matches 1 run function du-in:ingame/deathmatch/team/team_close
execute if score #main blueTeamCount matches 1 run function du-in:ingame/deathmatch/team/team_close

#TEAM DEATHMATCH ENDING#
execute if score #main blueTeamCount matches ..0 run function du-in:ingame/deathmatch/team/team_end
execute if score #main redTeamCount matches ..0 run function du-in:ingame/deathmatch/team/team_end