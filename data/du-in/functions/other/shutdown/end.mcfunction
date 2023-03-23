tag @a[tag=!lobby] add falseWin
tag @r[gamemode=spectator,tag=!working] add win
tag @r[tag=playing,tag=!working] add win

execute if entity @a[tag=win] run scoreboard players set #main endTime 5