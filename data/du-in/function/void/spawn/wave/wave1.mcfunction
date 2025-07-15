#execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 0 as @e[type=marker,tag=gonerSpawn] at @s as @a[gamemode=adventure,tag=void,distance=5..20,tag=!spectating] run function du-in:void/spawn/random1
execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 0 as @a[gamemode=adventure,tag=void,tag=!spectating] at @s as @e[type=marker,tag=gonerSpawn,distance=5..20] at @s run function du-in:void/spawn/random1

execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 1 as @a[gamemode=adventure,tag=void,tag=!spectating] at @s as @e[type=marker,tag=gonerSpawn,distance=5..20] at @s run function du-in:void/spawn/random2

execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 2.. as @a[gamemode=adventure,tag=void,tag=!spectating] at @s as @e[type=marker,tag=gonerSpawn,distance=5..20] at @s run function du-in:void/spawn/random3

#predicate=du-in:chance/half_chance