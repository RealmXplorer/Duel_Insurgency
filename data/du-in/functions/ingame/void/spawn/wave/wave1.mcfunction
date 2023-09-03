execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 0 as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s as @a[gamemode=adventure,tag=void,distance=3..20] run function du-in:ingame/void/spawn/random1

execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 1 as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s as @a[gamemode=adventure,tag=void,distance=3..20] run function du-in:ingame/void/spawn/random2

execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 2.. as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s as @a[gamemode=adventure,tag=void,distance=3..20] run function du-in:ingame/void/spawn/random3

#execute if score #main gonerCount <= #gonerMax gonerCount if score #main pylonsDestroyed matches 3 as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s if entity @a[gamemode=adventure,tag=void,distance=..20] run function du-in:ingame/void/spawn/random3


#execute if score #main gonerCount <= #gonerMax gonerCount as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s if entity @a[gamemode=adventure,tag=void,distance=..20] run function du-in:ingame/void/spawn/random1

#execute if score #main gonerCount matches ..3 if score #main pylonsDestroyed matches 0 run function du-in:ingame/void/spawn/pylon/pylon1
#execute if score #main gonerCount matches ..4 if score #main pylonsDestroyed matches 1 run function du-in:ingame/void/spawn/pylon/pylon2
#execute if score #main gonerCount matches ..5 if score #main pylonsDestroyed matches 2 run function du-in:ingame/void/spawn/pylon/pylon3
#execute if score #main gonerCount matches ..8 if score #main pylonsDestroyed matches 3 run function du-in:ingame/void/spawn/pylon/pylon4
