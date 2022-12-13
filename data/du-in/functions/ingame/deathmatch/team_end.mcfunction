execute if score #main blueTeamCount matches ..0 run tag @a[tag=playing,tag=!dmDead,tag=dmIngame,tag=team1] add win
execute if score #main redTeamCount matches ..0 run tag @a[tag=playing,tag=!dmDead,tag=dmIngame,tag=team2] add win
tag @a[tag=dmDead] add lose
tag @a[tag=spectating] add lose