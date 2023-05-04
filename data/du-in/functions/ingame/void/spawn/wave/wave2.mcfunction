#execute if score #main gonerCount matches ..3 if score #main pylonsDestroyed matches 0 run function du-in:ingame/void/spawn/pylon/pylon1
#execute if score #main gonerCount matches ..4 if score #main pylonsDestroyed matches 1 run function du-in:ingame/void/spawn/pylon/pylon2
#execute if score #main gonerCount matches ..5 if score #main pylonsDestroyed matches 2 run function du-in:ingame/void/spawn/pylon/pylon3
#execute if score #main gonerCount matches ..8 if score #main pylonsDestroyed matches 3 run function du-in:ingame/void/spawn/pylon/pylon4

execute if score #main gonerCount matches ..3 if score #main pylonsDestroyed matches 0 at @a as @e[type=marker,sort=nearest,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random1

execute if score #main gonerCount matches ..4 if score #main pylonsDestroyed matches 1 at @a as @e[type=marker,sort=nearest,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random2

execute if score #main gonerCount matches ..5 if score #main pylonsDestroyed matches 2 at @a as @e[type=marker,sort=nearest,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random3

execute if score #main gonerCount matches ..8 if score #main pylonsDestroyed matches 3 at @a as @e[type=marker,sort=nearest,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random3

#execute if score #main gonerCount matches ..3 if score #main pylonsDestroyed matches 0 as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random1

#execute if score #main gonerCount matches ..4 if score #main pylonsDestroyed matches 1 as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random2

#execute if score #main gonerCount matches ..5 if score #main pylonsDestroyed matches 2 as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random3

#execute if score #main gonerCount matches ..8 if score #main pylonsDestroyed matches 3 as @e[type=marker,tag=gonerSpawn,predicate=du-in:chance/half_chance] at @s run function du-in:ingame/void/spawn/random3
