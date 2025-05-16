#tp @s 10046.0 42 10047.0
execute as @a store result score @s spawnpoint run random value 1..8
tp @s[scores={spawnpoint=..2}] 10057.0 42 10035.0
tp @s[scores={spawnpoint=3..4}] 10058.0 42 10059.0
tp @s[scores={spawnpoint=5..6}] 10034.0 42 10059.0
tp @s[scores={spawnpoint=7..}] 10034.0 42 10035.0

damage @s 4 minecraft:generic
tellraw @s {text:"YOU CAN'T RUN",bold:true,color:gray}