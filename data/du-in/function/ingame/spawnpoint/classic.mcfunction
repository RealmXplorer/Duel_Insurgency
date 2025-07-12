#Set spawnpoints to furthest if arena
execute if score #main map matches 7 run function du-in:ingame/spawnpoint/furthest
execute if score #main map matches 21 run function du-in:ingame/spawnpoint/furthest

#Set spawnpoints to random if not arena.
execute unless score #main map matches 7 unless score #main map matches 21 run function du-in:ingame/spawnpoint/random