#Determine gamemode
execute as @a store result score @s spawnpoint run random value 1..8
# execute if entity @a[tag=cmap,tag=partyLeader] run function du-in:map/all/pick/pick_classic
# execute if entity @a[tag=cql,tag=partyLeader] run function du-in:map/all/pick/pick_conquest
# execute if entity @a[tag=kothl,tag=partyLeader] run function du-in:map/all/pick/pick_koth
# execute if entity @a[tag=ctfl,tag=partyLeader] run function du-in:map/all/pick/pick_ctf

execute if score #main gamemode matches 1..2 run function du-in:map/all/pick/pick_classic
execute if score #main gamemode matches 3 run function du-in:map/all/pick/pick_koth
execute if score #main gamemode matches 4 run function du-in:map/all/pick/pick_ctf
execute if score #main gamemode matches 5 run function du-in:map/all/pick/pick_conquest

#execute if entity @a[tag=partyLeader,tag=specialEvent] run function du-in:map/all/start/classic/dfc

#End function
tag @a remove quickMatch