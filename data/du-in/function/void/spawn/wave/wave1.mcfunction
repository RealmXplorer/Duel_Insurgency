execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 0 as @e[type=marker,tag=gonerSpawn] at @s as @a[gamemode=adventure,tag=void,distance=3..20] run function du-in:void/spawn/random1

execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 1 as @e[type=marker,tag=gonerSpawn] at @s as @a[gamemode=adventure,tag=void,distance=3..20] run function du-in:void/spawn/random2

execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 2.. as @e[type=marker,tag=gonerSpawn] at @s as @a[gamemode=adventure,tag=void,distance=3..20] run function du-in:void/spawn/random3

#predicate=du-in:chance/half_chance