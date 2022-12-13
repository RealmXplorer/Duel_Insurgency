#Set spawnpoints to furthest spawnpoint.
##No, I don't know why they have to be set to "nearest"
execute if entity @s[tag=!teammode] at @e[type=minecraft:marker,tag=spawnPoint,sort=nearest] facing entity @r[tag=playing] eyes run spawnpoint @s ~ ~ ~ ~
execute if entity @s[tag=teamMode,tag=team1] at @e[type=minecraft:marker,tag=spawnPoint,tag=team1,sort=nearest] facing entity @r[tag=playing] eyes run spawnpoint @s ~ ~ ~ ~
execute if entity @s[tag=teamMode,tag=team2] at @e[type=minecraft:marker,tag=spawnPoint,tag=team2,sort=nearest] facing entity @r[tag=playing] eyes run spawnpoint @s ~ ~ ~ ~