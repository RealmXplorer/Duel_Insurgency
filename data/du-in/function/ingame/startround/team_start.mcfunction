execute at @n[type=minecraft:marker,tag=spawnPoint,tag=team1] facing entity @r[tag=playing] eyes run tp @s[tag=team1] @e[type=marker,limit=1,tag=spawnPoint,tag=team1]
execute at @n[type=minecraft:marker,tag=spawnPoint,tag=team2] facing entity @r[tag=playing] eyes run tp @s[tag=team2] @e[type=marker,limit=1,tag=spawnPoint,tag=team2]
