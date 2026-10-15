#execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 0 as @e[type=marker,tag=gonerSpawn] at @s as @a[gamemode=adventure,tag=void,distance=5..20,tag=!spectating] run function du-in:void/spawn/random1
execute if score #main pylonsDestroyed matches 0 as @a[tag=void,tag=!voidSpect] at @s as @e[tag=gonerSpawn,distance=5..20,type=marker] at @s run function du-in:void/spawn/random1

execute if score #main pylonsDestroyed matches 1 as @a[tag=void,tag=!voidSpect] at @s as @e[tag=gonerSpawn,distance=5..20,type=marker] at @s run function du-in:void/spawn/random2

execute if score #main pylonsDestroyed matches 2.. as @a[tag=void,tag=!voidSpect] at @s as @e[tag=gonerSpawn,distance=5..20,type=marker] at @s run function du-in:void/spawn/random3

#execute if score #main pylonsDestroyed matches 2.. as @a[gamemode=adventure,tag=void,tag=!voidSpect] at @s as @e[tag=gonerSpawn,distance=5..20,type=marker] at @s run function du-in:void/spawn/random3

#predicate=du-in:chance/half_chance