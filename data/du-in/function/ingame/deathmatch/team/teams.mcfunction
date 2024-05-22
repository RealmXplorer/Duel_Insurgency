execute as @a[gamemode=!spectator,tag=playing,scores={dmDeath=1..}] run function du-in:ingame/deathmatch/team/convert

#RED TEAM DEATHMATCH END OF ROUND#
execute if score Red teamPool matches 2 run function du-in:ingame/deathmatch/team/team_close
execute if score Blue teamPool matches 2 run function du-in:ingame/deathmatch/team/team_close

#TEAM DEATHMATCH ENDING#
execute if score Blue teamPool matches ..0 run function du-in:ingame/deathmatch/team/team_end
execute if score Red teamPool matches ..0 run function du-in:ingame/deathmatch/team/team_end