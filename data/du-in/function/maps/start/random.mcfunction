execute if entity @a[tag=vendingMode,tag=partyLeader] run tag @a add vendingMachine
execute if entity @a[tag=cmap] store result score #main map run random value 1..18
execute if entity @a[tag=kothl] store result score #main map run random value 1..10
execute if entity @a[tag=ctfl] store result score #main map run random value 1..4
execute if entity @a[tag=cql] store result score #main map run random value 1..3

execute if entity @a[tag=quickMatch] run function du-in:maps/start/pick/init