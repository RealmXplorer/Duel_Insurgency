#execute if entity @s[tag=cql] store result score #main map run scoreboard players get @s cqMapRandom
#execute if entity @s[tag=ctfl] store result score #main map run scoreboard players get @s ctfMapRandom
#execute if entity @s[tag=kothl] store result score #main map run scoreboard players get @s kMapRandom
#execute if entity @s[tag=cmap] store result score #main map run scoreboard players get @s cMapRandom

execute if entity @s[tag=cmap] store result score #main map run random value 1..14
execute if entity @s[tag=kothl] store result score #main map run random value 1..8
execute if entity @s[tag=ctfl] store result score #main map run random value 1..4
execute if entity @s[tag=cql] store result score #main map run random value 1..3

execute if entity @s[tag=quickMatch] run function du-in:maps/start/pick/init
tag @s remove mapRandom