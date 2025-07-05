#Determine gamemode
execute as @a store result score @s spawnpoint run random value 1..8
execute if entity @a[tag=cmap,tag=partyLeader] run function du-in:maps/start/pick/pick_classic
execute if entity @a[tag=cql,tag=partyLeader] run function du-in:maps/start/pick/pick_conquest
execute if entity @a[tag=kothl,tag=partyLeader] run function du-in:maps/start/pick/pick_koth
execute if entity @a[tag=ctfl,tag=partyLeader] run function du-in:maps/start/pick/pick_ctf

#execute if entity @a[tag=partyLeader,tag=specialEvent] run function du-in:maps/start/classic/dfc
#End function
tag @a remove quickMatch