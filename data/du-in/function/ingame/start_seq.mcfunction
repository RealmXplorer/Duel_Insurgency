#Apply effects to all players
execute if score #main titleTimer2 matches ..79 run effect give @s minecraft:weakness 1 100 true
#execute if score #main titleTimer2 matches ..79 run effect give @s minecraft:slowness 1 100 true

#Teleport players to closest spawnpoint marker
#execute unless entity @s[tag=teamMode] facing entity @r[tag=playing,limit=1] eyes run tp @s @e[type=marker,sort=nearest,limit=1,tag=spawnPoint]
#execute unless entity @s[tag=teamMode] as @e[type=marker,tag=spawnPoint] run tp @p @s

execute if entity @s[tag=teamMode] at @e[type=minecraft:marker,tag=spawnPoint,tag=team1,sort=nearest] facing entity @r[tag=playing] eyes run tp @s[tag=team1] @e[type=marker,limit=1,tag=spawnPoint,tag=team1]
execute if entity @s[tag=teamMode] at @e[type=minecraft:marker,tag=spawnPoint,tag=team2,sort=nearest] facing entity @r[tag=playing] eyes run tp @s[tag=team2] @e[type=marker,limit=1,tag=spawnPoint,tag=team2]