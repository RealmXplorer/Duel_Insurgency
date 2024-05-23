#Apply effects to all players
execute if score #main titleTimer2 matches ..79 run effect give @s minecraft:weakness 1 100 true

execute if entity @s[tag=teamMode] at @n[type=minecraft:marker,tag=spawnPoint,tag=team1] facing entity @r[tag=playing] eyes run tp @s[tag=team1] @e[type=marker,limit=1,tag=spawnPoint,tag=team1]
execute if entity @s[tag=teamMode] at @n[type=minecraft:marker,tag=spawnPoint,tag=team2] facing entity @r[tag=playing] eyes run tp @s[tag=team2] @e[type=marker,limit=1,tag=spawnPoint,tag=team2]