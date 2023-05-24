#Set spawnpoints to random spawnpoint.
execute if entity @s[tag=!teammode] at @e[type=minecraft:marker,tag=spawnPoint,sort=random] facing entity @r[tag=playing,tag=!void] eyes run spawnpoint @s ~ ~ ~ ~
execute if entity @s[tag=teamMode,tag=team1] at @e[type=minecraft:marker,tag=spawnPoint,tag=team1,sort=random] facing entity @r[tag=playing,tag=!void] eyes run spawnpoint @s ~ ~ ~ ~
execute if entity @s[tag=teamMode,tag=team2] at @e[type=minecraft:marker,tag=spawnPoint,tag=team2,sort=random] facing entity @r[tag=playing,tag=!void] eyes run spawnpoint @s ~ ~ ~ ~
