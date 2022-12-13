#Determine gamemode
execute if entity @a[tag=cmap,tag=partyLeader] run function du-in:maps/pick/pick_classic
execute if entity @a[tag=cql,tag=partyLeader] run function du-in:maps/pick/pick_conquest
execute if entity @a[tag=kothl,tag=partyLeader] run function du-in:maps/pick/pick_koth
execute if entity @a[tag=ctfl,tag=partyLeader] run function du-in:maps/pick/pick_ctf

#End function
tag @a remove quickMatch
tag @a remove voteRandom