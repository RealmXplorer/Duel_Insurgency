#Set spawnpoints to furthest spawnpoint.
##No, I don't know why they have to be set to "nearest"
execute if entity @s[tag=!teammode] at @n[type=minecraft:marker,tag=spawnPoint] facing entity @r[tag=playing,tag=!void] eyes run spawnpoint @s ~ ~ ~ ~
execute if entity @s[tag=teamMode,tag=team1] at @n[type=minecraft:marker,tag=spawnPoint,tag=team1] facing entity @r[tag=playing,tag=!void] eyes run spawnpoint @s ~ ~ ~ ~
execute if entity @s[tag=teamMode,tag=team2] at @n[type=minecraft:marker,tag=spawnPoint,tag=team2] facing entity @r[tag=playing,tag=!void] eyes run spawnpoint @s ~ ~ ~ ~